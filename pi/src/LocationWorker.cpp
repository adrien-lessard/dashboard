
#include "LocationWorker.h"

#include "SunSet.h"

#include <QTcpSocket>
#include <QDate>
#include <QTime>
#include <QTimer>

#include <cstdlib>
#include <iostream>

LocationWorker::LocationWorker()
{
	server = new QTcpServer(this);
	connect(server, &QTcpServer::newConnection, this, &LocationWorker::onConnect);

	int port = 8080;
	if (server->listen(QHostAddress::Any, port))
		qDebug() << "Listening... for GPS coordinates on port " << port;

	lat = 45.5065016;
	lon = -73.6230979;
	timeZoneOffset = -5;

	// Schedule brightness updates
	QTimer* timer = new QTimer(this);
    connect(timer, &QTimer::timeout, this, &LocationWorker::updateSunriseSunset);
    timer->start(60000);

    // But perform an update as soon as possible
    updateSunriseSunset();
}

uint8_t getBrightness(double x1, double y1, double x2, double y2, double x)
{
	double m = (y2-y1)/(x2-x1);
	double b = y1 - m*x1;
	return m*x+b;
}

void LocationWorker::updateSunriseSunset()
{
	SunSet sun;

	sun.setPosition(lat, -lon, timeZoneOffset);

	QDate currentDate = QDate::currentDate();
	sun.setCurrentDate(currentDate.year(), currentDate.month(), currentDate.day());

	double sunrise;
	double sunset;

	sunrise = sun.calcSunrise();
	sunset = sun.calcSunset();

	QTime currentTime = QTime::currentTime();

	int minutesSinceMidnight = currentTime.hour()*60 + currentTime.minute();
	const int transitionTime = 60; // One hour light transition
	const uint8_t minBrightness = 63;
	const uint8_t maxBrightness = 255;
	uint8_t brightness;

	// Before dawn
	if(minutesSinceMidnight < sunrise - transitionTime / 2) {
		brightness = minBrightness;
	}
	// Dawn
	else if(sunrise - transitionTime / 2 <= minutesSinceMidnight && minutesSinceMidnight < sunrise + transitionTime / 2) {
		brightness = getBrightness(sunrise - transitionTime / 2, minBrightness, sunrise + transitionTime / 2, maxBrightness, minutesSinceMidnight);
	}
	// Day
	else if(sunrise + transitionTime / 2 <= minutesSinceMidnight && minutesSinceMidnight < sunset - transitionTime / 2) {
		brightness = maxBrightness;
	}
	// Dusk
	else if(sunset - transitionTime / 2 <= minutesSinceMidnight && minutesSinceMidnight < sunset + transitionTime / 2) {
		brightness = getBrightness(sunset - transitionTime / 2, maxBrightness, sunset + transitionTime / 2, minBrightness, minutesSinceMidnight);
	}
	// After Dusk
	else {
		brightness = minBrightness;
	}

	char command[128];
	sprintf(command, "echo %u > /sys/class/backlight/rpi_backlight/brightness", brightness);
	system(command);

	//std::cout << command << std::endl;
	//std::cout << "Sunrise is " << sunrise << " minutes past midnight." << std::endl;
	//std::cout << "Sunset is " << sunset << " minutes past midnight." << std::endl;
}

void LocationWorker::onConnect()
{
	QTcpSocket* socket = server->nextPendingConnection();
	socket->waitForReadyRead();

	const int MaxLength = 1024;
	char buffer[MaxLength + 1];

	qint64 byteCount = socket->read(buffer, MaxLength);
	buffer[byteCount] = 0;

	char search[] = "\r\n\r\n";
	char* res = strstr(buffer, search);
	if(res != NULL) {
		res += 4;
		char* newpos;
		lat = strtod(res, &newpos);
		newpos += 1;
		lon = strtod(newpos, NULL);
		emit setNewCoo(lat, lon);
		updateSunriseSunset();
	}

	const char* response =
		"HTTP/1.1 200 OK\r\n"
		"Connection: close\r\n"
		"Content-Type: text/html; charset=UTF-8\r\n"
		"\r\n"
		"<html><head><title>Thank you</title></head>"
		"<body><p>I can now locate myself!</p></body>"
		"</html>"
		;

	socket->write(response);

	socket->waitForBytesWritten();

	socket->close();
	delete socket;
}
