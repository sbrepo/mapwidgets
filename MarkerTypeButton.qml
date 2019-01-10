import QtQuick 2.0
import QtGraphicalEffects 1.12

Item {
    DropShadow {
       anchors.fill: rectangle
       verticalOffset: mp(0.75)
       radius: mp(1.5)
       samples: mp(3)
       color: "#80000000"
       source: rectangle
       cached: true
    }

    Rectangle {
        id: rectangle
        anchors.centerIn: parent
        height: parent.height / 5 * 4
        width: height
        radius: height / 2
        color: "#ffffff"
    }
}
