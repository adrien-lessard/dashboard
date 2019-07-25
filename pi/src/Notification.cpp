
#include <Notification.h>

using namespace std;

Notification* Notification::instance = nullptr;

void Notification::notify(QString text)
{
	instance->notifySub(text);
}

Notification* Notification::getInstance()
{
	if(instance == nullptr)
		instance = new Notification();
	return instance;
}

Notification::Notification()
{
	
}

void Notification::notifySub(QString text)
{
	QVariant qv(text);
	emit notifyUI(qv);
}
