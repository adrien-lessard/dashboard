
#include "OBDIIWorker.h"

#include "ISO9141.h"
#include "MILCode.h"
#include "PID.h"
#include "port.h"

#include <QFile>
#include <QFileInfo>
#include <QTextStream>
#include <QDateTime>

/* PID query result length */
constexpr size_t PIDResLens[] =
{
	[PID_SUPPORT00]		= 4,
	[MIL_CODE]			= 4,
	[FREEZE_DTC]		= 2,
	[FUEL_STATUS]		= 2,
	[ENGINE_LOAD]		= 1,
	[COOLANT_TEMP]		= 1,
	[STFT_BANK1]		= 1,
	[LTFT_BANK1]		= 1,
	[STFT_BANK2]		= 1,
	[LTFT_BANK2]		= 1,
	[FUEL_PRESSURE]		= 1,
	[MAN_PRESSURE]		= 1,
	[ENGINE_RPM]		= 2,
	[VEHICLE_SPEED]		= 1,
	[TIMING_ADV]		= 1,
	[INT_AIR_TEMP]		= 1,
	[MAF_AIR_FLOW]		= 2,
	[THROTTLE_POS]		= 1,
	[SEC_AIR_STAT]		= 1,
	[OXY_SENSORS1]		= 1,
	[B1S1_O2_V]			= 2,
	[B1S2_O2_V]			= 2,
	[B1S3_O2_V]			= 2,
	[B1S4_O2_V]			= 2,
	[B2S1_O2_V]			= 2,
	[B2S2_O2_V]			= 2,
	[B2S3_O2_V]			= 2,
	[B2S4_O2_V]			= 2,
	[OBD_STD]			= 1,
	[OXY_SENSORS2]		= 1,
	[AUX_INPUT]			= 1,
	[RUNTIME_START]		= 2,
	[PID_SUPPORT20]		= 4,
	[DIST_MIL_ON]		= 2,
	[FUEL_RAIL_P]		= 2,
	[FUEL_RAIL_DIESEL]	= 2,
	[O2S1_WR_V]			= 4,
	[O2S2_WR_V]			= 4,
	[O2S3_WR_V]			= 4,
	[O2S4_WR_V]			= 4,
	[O2S5_WR_V]			= 4,
	[O2S6_WR_V]			= 4,
	[O2S7_WR_V]			= 4,
	[O2S8_WR_V]			= 4,
	[EGR]				= 1,
	[EGR_ERROR]			= 1,
	[EVAP_PURGE]		= 1,
	[FUEL_LEVEL]		= 1,
	[WARM_UPS]			= 1,
	[DIST_MIL_CLR]		= 2,
	[EVAP_PRESSURE]		= 2,
	[BARO_PRESSURE]		= 1,
	[O2S1_WR_C]			= 4,
	[O2S2_WR_C]			= 4,
	[O2S3_WR_C]			= 4,
	[O2S4_WR_C]			= 4,
	[O2S5_WR_C]			= 4,
	[O2S6_WR_C]			= 4,
	[O2S7_WR_C]			= 4,
	[O2S8_WR_C]			= 4,
	[CAT_TEMP_B1S1]		= 2,
	[CAT_TEMP_B2S1]		= 2,
	[CAT_TEMP_B1S2]		= 2,
	[CAT_TEMP_B2S2]		= 2,
	[PID_SUPPORT40]		= 4,
	[MONITOR_STAT]		= 4,
	[CTRL_MOD_V]		= 2,
	[ABS_LOAD_VAL]		= 2,
	[CMD_EQUIV_R]		= 2,
	[REL_THR_POS]		= 1,
	[AMBIENT_TEMP]		= 1,
	[ABS_THR_POS_B]		= 1,
	[ABS_THR_POS_C]		= 1,
	[ACCEL_PEDAL_D]		= 1,
	[ACCEL_PEDAL_E]		= 1,
	[ACCEL_PEDAL_F]		= 1,
	[CMD_THR_ACTU]		= 1,
	[TIME_MIL_ON]		= 2,
	[TIME_MIL_CLR]		= 2
};

constexpr size_t maxPIDResLen = *std::max_element(std::begin(PIDResLens), std::end(PIDResLens));

OBDIIWorker::OBDIIWorker()
{
	mustStop = false;
	checkErrorCodes = false;
	clearErrorCodes = false;
}

// return 0 if pid is not supported, 1 if it is.
// mode is 0 for getPid() and 1 for menu config to allow pid > 0xF0
bool OBDIIWorker::isPidSupported(PID pid)
{
	// note that pid PID_SUPPORT00 (0x00) is always supported
	if ((pid > 0x00 && pid <= 0x20
			&& (1L << (0x20 - pid) & pid01to20_support) == 0)
			|| (pid > 0x20 && pid <= 0x40
					&& (1L << (0x40 - pid) & pid21to40_support) == 0)
			|| (pid > 0x40 && pid <= 0x60
					&& (1L << (0x60 - pid) & pid41to60_support) == 0)
			|| (pid >= PID::N_PIDS))
	{
		return false;
	}

	return true;
}

// get value of a PID, return as a long value
// and also formatted for string output in the return buffer
bool OBDIIWorker::getPid(PID pid, uint8_t* retbuf)
{
	uint8_t cmd[2];

	// check if PID is supported (should not happen except for some 0xFn)
	if(!isPidSupported(pid))
	{
		printf("PID %u not supported\n", pid);
		return false;
	}

	cmd[0] = 0x01;			// ISO cmd 1, get PID
	cmd[1] = pid;

	// send command, length 2
	ISO9141::write(cmd, sizeof(cmd));

	// read requested length, n bytes received in buf
	ISO9141::read(retbuf, PIDResLens[pid]);

	return true;
}

void OBDIIWorker::checkSupportedPids()
{
	getPid(PID_SUPPORT00, (uint8_t*)&pid01to20_support);
	pid01to20_support = __builtin_bswap32(pid01to20_support);

	if (isPidSupported(PID_SUPPORT20))
		getPid(PID_SUPPORT20, (uint8_t*)&pid21to40_support);
	pid21to40_support = __builtin_bswap32(pid21to40_support);

	if (isPidSupported(PID_SUPPORT40))
		getPid(PID_SUPPORT40, (uint8_t*)&pid41to60_support);
	pid41to60_support = __builtin_bswap32(pid41to60_support);
}

// might be incomplete
QString OBDIIWorker::checkMILCodes()
{
	uint8_t PIDRes[maxPIDResLen];
	char str[16];
	uint8_t cmd[1];
	uint8_t buf[6];
	QString retText = QString("");

	getPid(MIL_CODE, PIDRes);

	uint8_t byteA = PIDRes[0];

	/* A request for this PID returns 4 bytes of data. The first uint8_t contains
	 two pieces of information. Bit A7 (the seventh bit of uint8_t A, the first byte)
	 indicates whether or not the MIL (check engine light) is illuminated. Bits A0
	 through A6 represent the number of diagnostic trouble codes currently flagged
	 in the ECU. The second, third, and fourth bytes give information about the
	 availability and completeness of certain on-board tests. Note that test
	 availability signified by set (1) bit; completeness signified by reset (0)
	 bit. (from Wikipedia)
	 */
	if(byteA & 0x80)  // test bit A7
	{
		// we have MIL on
		int nbMILCodes = byteA & 0x7F;
		printf("CHECK ENGINE ON\n");
		printf("%d CODE(S) IN ECU\n", nbMILCodes);

		// retrieve code
		cmd[0] = 0x03;
		ISO9141::write(cmd, sizeof(cmd));

		int readCodes = 0;
		for (int i = 0; i < (nbMILCodes + 2) / 3; i++)  // each received packet contain 3 codes
		{
			ISO9141::read(buf, 6);
			uint8_t* buf_ptr = buf;
			
			for (int j = 0; j < 3; j++)  // the 3 codes
			{
				if(readCodes < nbMILCodes)
				{
					MILCode m;

					switch ((*buf_ptr & 0xC0) >> 6)
					{
					case 0x00:
						m.letter = 'P';  // powertrain
						break;
					case 0x01:
						m.letter = 'C';  // chassis
						break;
					case 0x02:
						m.letter = 'B';  // body
						break;
					case 0x03:
						m.letter = 'U';  // network
						break;
					}

					m.chars[0] = (*buf_ptr & 0x30) >> 4;
					m.chars[1] = (*buf_ptr & 0x0F) >> 0;
					buf_ptr++;
					m.chars[2] = (*buf_ptr & 0xF0) >> 4;
					m.chars[3] = (*buf_ptr & 0x0F) >> 0;
					buf_ptr++;

					m.print();
					retText += m.toQString();

					readCodes++;
				}
			}
		}
	}
	else
	{
		retText = "CHECK ENGINE OFF, good for you!";
	}

	return retText;
}

void OBDIIWorker::clearMILCodes()
{
	uint8_t cmd[1];

	// clear code
	cmd[0] = 0x04;
	ISO9141::write(cmd, sizeof(cmd));
	delayMs(200);

	printf("Cleared codes. Restart engine.\n");
}

void OBDIIWorker::setup()
{
	printf("Dashboard v0.1\n");

	srand(time(NULL));

	portInit();

	// Initialize the log file
	// By default, use current date and time as filename
	QDateTime currentDate = QDateTime::currentDateTime();
	QString logFileName = QString("/home/pi/logs/") + currentDate.toString("dd.MM.yyyy_HH.mm.ss.log");
	int logFileNb = 1;

	while(true)
	{
		// If file does not exist yet, use it as log file
		QFileInfo fileinfo(logFileName);
		if(!fileinfo.exists())
			break;

		// If we can't use the date as the file name, use a sequential number instead
		logFileName = QString().sprintf("/home/pi/logs/%d.log", logFileNb);
		logFileNb++;
	}

	// Create the log file
	logFile = new QFile(logFileName);
	if (!logFile->open(QIODevice::WriteOnly | QIODevice::Text))
	{
		printf("Cannot open log file\n");
		return;
	}

	// Loop until ISO9141 is initiated
	int initResult;
	do
	{
		// To let this die properly
		if(mustStop)
			return;
		
		printf("ISO9141 init...\n");
		initResult = ISO9141::init();
		if (initResult == 0)
			printf("ISO9141 init success!\n");
		else
			printf("ISO9141 init failure!\n");

		delayMs(1000);
	} while (initResult != 0);

	// check supported PIDs
	OBDIIWorker::checkSupportedPids();
}

void OBDIIWorker::computeAndEmitPID(PID pid)
{
	uint8_t retBuf[maxPIDResLen];
	getPid(pid, retBuf);

	switch(pid)
	{
		case PID::PID_SUPPORT00:
		{
			support00 = Support00(retBuf).getEU();
			emit Support00Changed();
			break;
		}
		case PID::MIL_CODE:
		{
			milCode = MilCode(retBuf).getEU();
			emit MilCodeChanged();
			break;
		}
		case PID::FUEL_STATUS:
		{
			fuelStatus = FuelStatus(retBuf).getEU();
			emit FuelStatusChanged();
			break;
		}
		case PID::ENGINE_LOAD:
		{
			engineLoad = EngineLoad(retBuf).getEU();
			emit EngineLoadChanged();
			break;
		}
		case PID::COOLANT_TEMP:
		{
			coolantTemp = CoolantTemp(retBuf).getEU();
			emit CoolantTempChanged();
			break;
		}
		case PID::STFT_BANK1:
		{
			stftB1 = ShortTermFuelTrimB1(retBuf).getEU();
			emit StftB1Changed();
			break;
		}
		case PID::LTFT_BANK1:
		{
			ltftB1 = LongTermFuelTrimB1(retBuf).getEU();
			emit LtftB1Changed();
			break;
		}
		case PID::ENGINE_RPM:
		{
			rpm = EngineRPM(retBuf).getEU();
			emit RPMChanged();
			break;
		}
		case PID::VEHICLE_SPEED:
		{
			speed = VehicleSpeed(retBuf).getEU();
			emit SpeedChanged();
			break;
		}
		case PID::TIMING_ADV:
		{
			timingAdv = TimingAdvance(retBuf).getEU();
			emit TimingAdvChanged();
			break;
		}
		case PID::INT_AIR_TEMP:
		{
			intAirTmp = IntakeAirTemp(retBuf).getEU();
			emit IntAirTmpChanged();
			break;
		}
		case PID::MAF_AIR_FLOW:
		{
			airFlow = AirFlowRate(retBuf).getEU();
			emit AirFlowChanged();
			break;
		}
		case PID::THROTTLE_POS:
		{
			throttle = ThrottlePosition(retBuf).getEU();
			emit ThrottleChanged();
			break;
		}
		case PID::OXY_SENSORS1:
		{
			oxySensors = OxygenSensor1(retBuf).getEU();
			emit OxySensorsChanged();
			break;
		}
		case PID::B1S1_O2_V:
		{
			b1s1 = OxygenSensor1(retBuf).getEU();
			b1s1p = OxygenSensor1(retBuf).getPercent();
			emit B1s1Changed();
			emit B1s1pChanged();
			break;
		}
		case PID::B1S2_O2_V:
		{
			b1s2 = OxygenSensor2(retBuf).getEU();
			b1s2p = OxygenSensor2(retBuf).getPercent();
			emit B1s2Changed();
			emit B1s2pChanged();
			break;
		}
		case PID::OBD_STD:
		{
			obdStd = OBDStandard(retBuf).getEU();
			emit ObdStdChanged();
			break;
		}
		default:
		{
			printf("Wrong PID: 0x%02X\n", pid);
			break;
		}
	}
}

void OBDIIWorker::run()
{
	// Setup everything for the runner script
	setup();

	// List of PID that we do not need to poll frequently
	const PID otherPIDs[] = { 	PID::PID_SUPPORT00,
								PID::MIL_CODE,
								PID::FUEL_STATUS,
								PID::ENGINE_LOAD,
								PID::COOLANT_TEMP,
								PID::STFT_BANK1,
								PID::LTFT_BANK1,
								PID::TIMING_ADV,
								PID::INT_AIR_TEMP,
								PID::THROTTLE_POS,
								PID::OXY_SENSORS1,
								PID::B1S1_O2_V,
								PID::B1S2_O2_V,
								PID::OBD_STD };
	int otherPIDIndex = 0;

	// Out stream for logging
	QTextStream out(logFile);
	
	while(!mustStop)
	{
		if(checkErrorCodes) {
			QString retString = checkMILCodes();
			checkErrorCodes = false;
			emit checkErrorCodesDone(retString);
		}

		if(clearErrorCodes) {
			clearMILCodes();
			clearErrorCodes = false;
			emit clearErrorCodesDone("Cleared! Please restart engine");
		}

		// Poll these PIDs as frequently as possible
		computeAndEmitPID(PID::ENGINE_RPM);
		computeAndEmitPID(PID::VEHICLE_SPEED);
		computeAndEmitPID(PID::MAF_AIR_FLOW);

		// Poll one of the other PIDs each round
		computeAndEmitPID(otherPIDs[otherPIDIndex]);
		otherPIDIndex++;
		otherPIDIndex %= ARRAY_SIZE(otherPIDs);

		// Append a new line of data to the file
		out << rpm << "," << speed << "," << airFlow << "\n";
		if(otherPIDIndex == 0)
			out << 	support00 << "," << 
					milCode << "," << 
					fuelStatus << "," << 
					engineLoad << "," << 
					coolantTemp << "," << 
					stftB1 << "," << 
					ltftB1 << "," << 
					timingAdv << "," << 
					intAirTmp << "," << 
					throttle << "," << 
					oxySensors << "," << 
					b1s1 << "," << 
					b1s1p << "," << 
					b1s2 << "," << 
					b1s2p << "," << 
					obdStd << "\n";

		// Update ODO (might be used for a UI tick in the future)
		emit updateOdo();
	}
}

void OBDIIWorker::stop()
{
	mustStop = true;
}

void OBDIIWorker::handleCheckErrorCodes()
{
	checkErrorCodes = true;
}

void OBDIIWorker::handleClearErrorCodes()
{
	clearErrorCodes = true;
}
