
#pragma once

#include <QObject>
#include <QTcpServer>
#include <QVariant>

class LocationWorker : public QObject
{
	Q_OBJECT
public:

	LocationWorker();

signals:
	void setNewCoo(QVariant lat, QVariant lon);

private:
	void onConnect();
	void updateSunriseSunset();

	QTcpServer* server;

	double lat;
	double lon;
	double timeZoneOffset;
};
