#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "gui_event_receiver.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    GuiEventReceiver gui_rec;

    engine.rootContext()->setContextProperty("guireceiver", &gui_rec);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
