import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Map")

    MarkerViewOverlay {
        anchors.centerIn: parent
        width: 400
        height: 300
    }
}
