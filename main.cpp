#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QFontDatabase>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    QFontDatabase::addApplicationFont(":/fonts/SF-UI-Display-Regular.ttf");
    QFontDatabase::addApplicationFont(":/fonts/SF-UI-Text-Regular.ttf");

    return app.exec();
}
