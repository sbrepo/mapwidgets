import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 2.4
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
        radius: mp(3)

        color: "#eee"

        Rectangle {
            id: headerRect
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            height: parent.height / 6
            color: "#3696de"

            radius: mp(3)

            Rectangle {
                id: headBorderRect
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                height: parent.radius
                color: parent.color
            }

            Text {
                id: titleText
                anchors.top: parent.top
                anchors.right: crossButton.left
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.leftMargin: mp(3)

                text: "Новый маркер"
                verticalAlignment: Text.AlignVCenter
                color: "#fff"
                font.pointSize: 16
            }

            Rectangle {
                id: crossButton
                color: "#00000000"
                anchors.right: parent.right
                anchors.top: parent.top
                height: parent.height
                width: height

                Image {
                    id: crossImage
                    anchors.centerIn: parent
                    width: parent.width / 4 * 3
                    height: parent.height / 4 * 3

                    source: "qrc:/textures/cross.svg"
                    sourceSize: Qt.size(width, height)
                    smooth: true
                }
            }
        }

        Rectangle {
            id: textRect
            anchors.top: headerRect.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: markersSurface.top
            anchors.topMargin: mp(2)
            anchors.bottomMargin: mp(2)

            color: "#fff"

            ScrollView {
                id: textScroll
                anchors.fill: parent
                anchors.topMargin: mp(2)
                anchors.bottomMargin: mp(2)
                anchors.leftMargin: mp(2)
                anchors.rightMargin: mp(2)
                ScrollBar.vertical.interactive: false
                TextArea {
                    id: textInput
                    renderType: Text.NativeRendering

                    text: qsTr("Description")
                    font.pointSize: 12
                    wrapMode: Text.Wrap
                }
            }
        }

        Rectangle {
            id: markersSurface
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            height: parent.height / 4
            radius: mp(3)

            ListView {
                id: column
                anchors.fill: parent
                anchors.leftMargin: mp(2)
                anchors.rightMargin: mp(2)
                orientation: ListView.Horizontal
                clip: true

                delegate: MarkerTypeButton {
                    id: marker1
                    height: parent.height
                    width: height
                }

                model: ListModel {
                    id: markersModel
                    ListElement {
                        status: "checked"
                        imgSource: ""
                    }
                    ListElement {
                        status: "unchecked"
                        imgSource: ""
                    }
                    ListElement {
                        status: "unchecked"
                        imgSource: ""
                    }
                }
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
