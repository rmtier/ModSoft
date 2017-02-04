import QtQuick 2.0

Rectangle {
    id: menuhorizontalbutton
    width: 145; height: 60
    color: "#009999"
    radius: 9
    property alias text: label.text
    border {
        color: "white";
        width: 1
    }

    Text {
        id: label
        anchors.centerIn: parent
        text: "Click Me!"
        font.pointSize: 12
        color: "white"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: FileDialog.open()
    }
}
