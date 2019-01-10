import QtQuick 2.0
import QtQuick.Window 2.0
import QtGraphicalEffects 1.12

Item {
    id: mainItem

    function mp(x) {
        return x * Screen.pixelDensity;
    }

    Rectangle {
        id: mainSurface
        anchors.fill: parent
        color: "#f8f8f8"
        radius: mp(4)

        Rectangle {
            id: crossButton
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.topMargin: mp(2)
            anchors.rightMargin: mp(2)
            width: mp(6)
            height: width
            color: "#00000000"

            Image {
                id: crossImage
                anchors.fill: parent

                source: "qrc:/textures/cross.svg"
                sourceSize: Qt.size(width, height)
                smooth: true
            }
        }
    }
}
