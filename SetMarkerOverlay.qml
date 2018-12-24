import QtQuick 2.0
import QtQuick.Window 2.0
import QtGraphicalEffects 1.12

Item {
    id: mainItem

    function mp(x) {
        return x * Screen.pixelDensity;
    }

    Rectangle {
        id: overlaySurface
        anchors.centerIn: parent
        width: parent.width
        height: parent.height

        color: "#eee"

        TextInput {
            id: textInput
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            height: parent.height / 5 * 4
            anchors.topMargin: mp(2)
            anchors.bottomMargin: mp(2)
            anchors.leftMargin: mp(2)
            anchors.rightMargin: mp(2)
            text: qsTr("Description")
            font.pointSize: 12
        }

        Column {
            id: column
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            height: parent.height / 5

            MarkerTypeButton {
                id: marker1
                height: parent.height
                width: height
            }
        }
    }

    DropShadow {
       anchors.fill: overlaySurface
       verticalOffset: mp(1)
       radius: mp(2)
       samples: mp(4)
       color: "#80000000"
       source: overlaySurface
    }

}
