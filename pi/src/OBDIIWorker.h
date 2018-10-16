
#pragma once

#include <QThread>
#include <QVariant>
#include "PID.h"
#include <inttypes.h>

class OBDIIWorker : public QThread
{
	Q_OBJECT
public:

	OBDIIWorker();

	void run() override;
	void stop();

	Q_PROPERTY(unsigned int support00 MEMBER support00 NOTIFY Support00Changed)
	Q_PROPERTY(unsigned int milCode MEMBER milCode NOTIFY MilCodeChanged)
	Q_PROPERTY(unsigned int fuelStatus MEMBER fuelStatus NOTIFY FuelStatusChanged)
	Q_PROPERTY(float engineLoad MEMBER engineLoad NOTIFY EngineLoadChanged)
	Q_PROPERTY(int coolantTemp MEMBER coolantTemp NOTIFY CoolantTempChanged)
	Q_PROPERTY(float stftB1 MEMBER stftB1 NOTIFY StftB1Changed)
	Q_PROPERTY(float ltftB1 MEMBER ltftB1 NOTIFY LtftB1Changed)
	Q_PROPERTY(float rpm MEMBER rpm NOTIFY RPMChanged)
	Q_PROPERTY(int speed MEMBER speed NOTIFY SpeedChanged)
	Q_PROPERTY(float timingAdv MEMBER timingAdv NOTIFY TimingAdvChanged)
	Q_PROPERTY(float intAirTmp MEMBER intAirTmp NOTIFY IntAirTmpChanged)
	Q_PROPERTY(float airFlow MEMBER airFlow NOTIFY AirFlowChanged)
	Q_PROPERTY(float throttle MEMBER throttle NOTIFY ThrottleChanged)
	Q_PROPERTY(unsigned int oxySensors MEMBER oxySensors NOTIFY OxySensorsChanged)
	Q_PROPERTY(float b1s1 MEMBER b1s1 NOTIFY B1s1Changed)
	Q_PROPERTY(float b1s1p MEMBER b1s1p NOTIFY B1s1pChanged)
	Q_PROPERTY(float b1s2 MEMBER b1s2 NOTIFY B1s2Changed)
	Q_PROPERTY(float b1s2p MEMBER b1s2p NOTIFY B1s2pChanged)
	Q_PROPERTY(unsigned int obdStd MEMBER obdStd NOTIFY ObdStdChanged)

signals:
	// PID change signals
	void Support00Changed();
	void MilCodeChanged();
	void FuelStatusChanged();
	void EngineLoadChanged();
	void CoolantTempChanged();
	void StftB1Changed();
	void LtftB1Changed();
	void RPMChanged();
	void SpeedChanged();
	void TimingAdvChanged();
	void IntAirTmpChanged();
	void AirFlowChanged();
	void ThrottleChanged();
	void OxySensorsChanged();
	void B1s1Changed();
	void B1s1pChanged();
	void B1s2Changed();
	void B1s2pChanged();
	void ObdStdChanged();

	// Job done flags
	void checkErrorCodesDone(QVariant text);
	void clearErrorCodesDone(QVariant text);
	void updateOdo();
	
public slots:
	void handleCheckErrorCodes();
	void handleClearErrorCodes();

private:
	// PID raw values
	unsigned int support00 = 0;
	unsigned int milCode = 0;
	unsigned int fuelStatus = 0;
	float engineLoad = 0;
	int coolantTemp = 0;
	float stftB1 = 0;
	float ltftB1 = 0;
	float rpm = 0;
	int speed = 0;
	float timingAdv = 0;
	float intAirTmp = 0;
	float airFlow = 0;
	float throttle = 0;
	unsigned int oxySensors = 0;
	float b1s1 = 0;
	float b1s1p = 0;
	float b1s2 = 0;
	float b1s2p = 0;
	unsigned int obdStd = 0;

	// Flags
	bool mustStop;
	bool checkErrorCodes;
	bool clearErrorCodes;

private:
	void setup();
	void computeAndEmitPID(PID pid);
};
