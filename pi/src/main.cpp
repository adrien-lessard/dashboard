#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickWindow>
#include <QCursor>
#include <QFontDatabase>

#include "DashboardApplication.h"
#include "Notification.h"
#include "OBDIIWorker.h"
#include "LocationWorker.h"

int main(int argc, char *argv[])
{
	OBDIIWorker* worker = new OBDIIWorker;
	DashboardApplication* app = new DashboardApplication(worker, argc, argv);
	Notification* notif = Notification::getInstance();

	LocationWorker* locationner = new LocationWorker();

	// Hide cursor
	app->setOverrideCursor(QCursor(Qt::BlankCursor));

	QQmlApplicationEngine engine;

	// Load worker
	engine.rootContext()->setContextProperty("applicationData", worker);

	// Load default monospace font
	const QFont fixedFont = QFontDatabase::systemFont(QFontDatabase::FixedFont);
	engine.rootContext()->setContextProperty("fixedFont", fixedFont);

	// Load UI
	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

	// Establish connections between UI and backend
	QObject* topLevel = engine.rootObjects().value(0);
	QObject* tripPage = topLevel->findChild<QObject*>("TripPage");
	QObject* navPage = topLevel->findChild<QObject*>("NavPage");
	QObject* statusPage = topLevel->findChild<QObject*>("StatusPage");
	QQuickWindow* window = qobject_cast<QQuickWindow*>(topLevel);
	QObject::connect(window, SIGNAL(checkErrorCodes()), worker, SLOT(handleCheckErrorCodes()));
	QObject::connect(window, SIGNAL(clearErrorCodes()), worker, SLOT(handleClearErrorCodes()));
	QObject::connect(window, SIGNAL(checkForUpdates()), app, SLOT(handleCheckForUpdates()));
	QObject::connect(window, SIGNAL(killApplication()), app, SLOT(handleKillApplication()));
	QObject::connect(worker, SIGNAL(checkErrorCodesDone(QVariant)), statusPage, SLOT(checkErrorCodesDone(QVariant)));
	QObject::connect(worker, SIGNAL(clearErrorCodesDone(QVariant)), statusPage, SLOT(clearErrorCodesDone(QVariant)));
	QObject::connect(worker, SIGNAL(updateOdo()), tripPage, SLOT(updateOdo()));
	QObject::connect(notif, SIGNAL(notifyUI(QVariant)), topLevel, SLOT(notifyUI(QVariant)));
	QObject::connect(locationner, SIGNAL(setNewCoo(QVariant, QVariant)), navPage, SLOT(setNewCoo(QVariant, QVariant)));

	QObject::connect(app, &DashboardApplication::aboutToQuit, app, &DashboardApplication::killWorker);
	worker->start();
	worker->setPriority(QThread::TimeCriticalPriority);

	return app->exec();
}
