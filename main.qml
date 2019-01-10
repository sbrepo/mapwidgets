import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.0

ApplicationWindow {
    function mp(x) {
        return x * Screen.pixelDensity;
    }

    visible: true
    width: 640
    height: 480
    title: qsTr("Map")

    MarkerViewOverlay {
        anchors.centerIn: parent
        width: mp(80)
        height: mp(60)
    }
}
