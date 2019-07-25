
#pragma once

#include <QObject>
#include <QString>
#include <QVariant>
#include <string>

class Notification : public QObject
{
	Q_OBJECT
public:

	static void notify(QString text);
	static Notification* getInstance();
	
signals:
	void notifyUI(QVariant text);

private:

	Notification();
	void notifySub(QString text);
	static Notification* instance;
};


