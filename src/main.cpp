#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "graphics_tools/gui_event_receiver.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    GuiEventReceiver gui_rec;

    engine.rootContext()->setContextProperty("guireceiver", &gui_rec);
    engine.load(QUrl(QStringLiteral("qrc:/QML/main.qml")));

    return app.exec();
}
