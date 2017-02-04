import QtQuick 2.5

Rectangle {

    width: 400
    height: 360
    color: "#3b5784"
    property alias classDiagText: classDiagText
    property alias seqDiagMouseArea: seqDiagMouseArea
    property alias seqDiagText: seqDiagText
    property alias exitMouseArea: exitMouseArea
    property alias classDiagMouseArea: classDiagMouseArea
    property alias mouseArea: mouseArea
    property alias seqDiagRectangle: seqDiagRectangle

    MouseArea {
        id: mouseArea
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent

        Text {
            id: mainText
            x: 120
            width: 160
            height: 37
            color: "#ffffff"
            text: qsTr("Modsoft 1.0 ")
            anchors.top: parent.top
            anchors.topMargin: 39
            font.pixelSize: 29
        }

        Rectangle {
            id: rectangle
            color: "#ffffff"
            anchors.topMargin: 86
            anchors.fill: parent

            Rectangle {
                id: seqDiagRectangle
                x: 29
                width: 339
                height: 50
                color: "#cecccc"
                anchors.top: parent.top
                anchors.topMargin: 25

                TextEdit {
                    id: seqDiagText
                    x: 68
                    y: 12
                    width: 203
                    height: 27
                    text: qsTr("Sequence Diagram")
                    font.pixelSize: 24
                }

                MouseArea {
                    id: seqDiagMouseArea
                    width: 339
                    height: 51
                }
            }

            Rectangle {
                id: exitRectangle
                x: 29
                width: 339
                height: 50
                color: "#cecccc"
                anchors.top: parent.top
                anchors.topMargin: 180

                TextEdit {
                    id: exitTextEdit
                    x: 150
                    y: 13
                    width: 40
                    height: 30
                    text: qsTr("Exit")
                    font.pixelSize: 24
                }

                MouseArea {
                    id: exitMouseArea
                    width: 339
                    height: 51
                }
            }

            Rectangle {
                id: classDiagRectangle
                x: 29
                width: 339
                height: 50
                color: "#cecccc"
                anchors.top: parent.top
                anchors.topMargin: 100

                TextEdit {
                    id: classDiagText
                    x: 94
                    y: 8
                    width: 151
                    height: 35
                    text: qsTr("Class Diagram")
                    readOnly: true
                    font.pixelSize: 24
                }

                MouseArea {
                    id: classDiagMouseArea
                    x: 0
                    y: 0
                    width: 339
                    height: 51
                    antialiasing: false
                    scale: 1
                    z: 0
                    transformOrigin: Item.Center
                    rotation: 0
                }
            }
        }
    }
}
