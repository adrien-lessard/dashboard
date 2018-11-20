
#include "LocationWorker.h"

#include <QTcpSocket>
#include <cstdlib>

LocationWorker::LocationWorker()
{
	server = new QTcpServer(this);
	connect(server, &QTcpServer::newConnection, this, &LocationWorker::onConnect);

	int port = 8080;
	if (server->listen(QHostAddress::Any, port))
		qDebug() << "Listening... for GPS coordinates on port " << port;
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
		double lat = strtod(res, &newpos);
		newpos += 1;
		double lon = strtod(newpos, NULL);

		emit setNewCoo(lat, lon);
	}

	const char* response =
		"HTTP/1.1 200 OK\r\n"
		"Connection: close\r\n"
		"Content-Type: text/html; charset=UTF-8\r\n"
		"\r\n"
		"<html><head><title>XPG Server</title></head>"
		"<body><p>Hello, World! Text is da bomb.</p></body>"
		"</html>"
		;

	socket->write(response);

	socket->waitForBytesWritten();

	socket->close();
	delete socket;
}
