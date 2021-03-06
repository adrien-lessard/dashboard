
#pragma once

#include <inttypes.h>
#include <string>

enum PID {
	PID_SUPPORT00,
	MIL_CODE,
	FREEZE_DTC,
	FUEL_STATUS,
	ENGINE_LOAD,
	COOLANT_TEMP,
	STFT_BANK1,
	LTFT_BANK1,
	STFT_BANK2,
	LTFT_BANK2,
	FUEL_PRESSURE,
	MAN_PRESSURE,
	ENGINE_RPM,
	VEHICLE_SPEED,
	TIMING_ADV,
	INT_AIR_TEMP,
	MAF_AIR_FLOW,
	THROTTLE_POS,
	SEC_AIR_STAT,
	OXY_SENSORS1,
	B1S1_O2_V,
	B1S2_O2_V,
	B1S3_O2_V,
	B1S4_O2_V,
	B2S1_O2_V,
	B2S2_O2_V,
	B2S3_O2_V,
	B2S4_O2_V,
	OBD_STD,
	OXY_SENSORS2,
	AUX_INPUT,
	RUNTIME_START,
	PID_SUPPORT20,
	DIST_MIL_ON,
	FUEL_RAIL_P,
	FUEL_RAIL_DIESEL,
	O2S1_WR_V,
	O2S2_WR_V,
	O2S3_WR_V,
	O2S4_WR_V,
	O2S5_WR_V,
	O2S6_WR_V,
	O2S7_WR_V,
	O2S8_WR_V,
	EGR,
	EGR_ERROR,
	EVAP_PURGE,
	FUEL_LEVEL,
	WARM_UPS,
	DIST_MIL_CLR,
	EVAP_PRESSURE,
	BARO_PRESSURE,
	O2S1_WR_C,
	O2S2_WR_C,
	O2S3_WR_C,
	O2S4_WR_C,
	O2S5_WR_C,
	O2S6_WR_C,
	O2S7_WR_C,
	O2S8_WR_C,
	CAT_TEMP_B1S1,
	CAT_TEMP_B2S1,
	CAT_TEMP_B1S2,
	CAT_TEMP_B2S2,
	PID_SUPPORT40,
	MONITOR_STAT,
	CTRL_MOD_V,
	ABS_LOAD_VAL,
	CMD_EQUIV_R,
	REL_THR_POS,
	AMBIENT_TEMP,
	ABS_THR_POS_B,
	ABS_THR_POS_C,
	ACCEL_PEDAL_D,
	ACCEL_PEDAL_E,
	ACCEL_PEDAL_F,
	CMD_THR_ACTU,
	TIME_MIL_ON,
	TIME_MIL_CLR,
	N_PIDS
};

class OBDIIPID
{
public:
	OBDIIPID(uint8_t* data) : data(data), A(data[0]), B(data[1]), C(data[2]), D(data[3]) { }
protected:
	uint8_t* data;
	uint8_t A;
	uint8_t B;
	uint8_t C;
	uint8_t D;
};

// PID 0x00
class Support00 : OBDIIPID
{
public:
	Support00(uint8_t* data) : OBDIIPID(data) {}
	uint32_t getEU(){ return (uint32_t)A << 24 | (uint32_t)B << 16 | (uint32_t)C << 8 | (uint32_t)D; }
};

// PID 0x01
typedef Support00				MilCode;

// PID 0x03
typedef Support00				FuelStatus;

// PID 0x04
class EngineLoad : OBDIIPID
{
public:
	EngineLoad(uint8_t* data) : OBDIIPID(data) {}
	double getEU(){ return 100.f / 255 * A; }
};

// PID 0x05
class CoolantTemp : OBDIIPID
{
public:
	CoolantTemp(uint8_t* data) : OBDIIPID(data) {}
	double getEU(){ return A - 40; }
};

// PID 0x06
class ShortTermFuelTrimB1 : OBDIIPID
{
public:
	ShortTermFuelTrimB1(uint8_t* data) : OBDIIPID(data) {}
	double getEU(){ return 100.f * A / 128 - 100; }
};

// PID 0x07
typedef ShortTermFuelTrimB1		LongTermFuelTrimB1;

// PID 0x0C
class EngineRPM : OBDIIPID
{
public:
	EngineRPM(uint8_t* data) : OBDIIPID(data) {}
	double getEU(){ return (256.f * A + B) / 4; }
};

// PID 0x0D
class VehicleSpeed : OBDIIPID
{
public:
	VehicleSpeed(uint8_t* data) : OBDIIPID(data) {}
	double getEU(){ return A; }
};

// PID 0x0E
class TimingAdvance : OBDIIPID
{
public:
	TimingAdvance(uint8_t* data) : OBDIIPID(data) {}
	double getEU(){ return 0.5f * A - 64; }
};

// PID 0x0F
typedef CoolantTemp				IntakeAirTemp;

// PID 0x10
class AirFlowRate : OBDIIPID
{
public:
	AirFlowRate(uint8_t* data) : OBDIIPID(data) {}
	double getEU(){ return (256.f * A + B) / 100; }
};

// PID 0x11
typedef EngineLoad				ThrottlePosition;

// PID 0x13
typedef Support00				OxygenSensorPresent;

// PID 0x14
class OxygenSensor1 : OBDIIPID
{
public:
	OxygenSensor1(uint8_t* data) : OBDIIPID(data) {}
	double getEU(){ return 1.0 / 200 * A; }
	double getPercent(){ return 100.f * B / 128 - 100; }
};

// PID 0x15
typedef OxygenSensor1			OxygenSensor2;

// PID 0x1C
typedef Support00				OBDStandard;
