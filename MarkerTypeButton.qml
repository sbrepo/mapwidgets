import QtQuick 2.0
import QtGraphicalEffects 1.12

Item {
    Rectangle {
        id: rectangle
        anchors.centerIn: parent
        height: parent.height / 5 * 4
        width: height
        radius: height / 2
        color: "#ffffff"
    }

    DropShadow {
       anchors.fill: rectangle
       verticalOffset: mp(1)
       radius: mp(2)
       samples: mp(4)
       color: "#80000000"
       source: rectangle
    }
}
