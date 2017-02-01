import QtQuick 2.0

Rectangle {
    id: menubutton
    width: 145; height: 60
    color: "blue"
    smooth: true; radius: 9
    property alias text: label.text
    border {color: "#B9C5D0"; width: 1}

    gradient: Gradient {
        GradientStop {color: "#737373"; position: 0.0}
        GradientStop {color: "#4d4d4d"; position: 0.57}
        GradientStop {color: "#262626"; position: 0.9}
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
        onClicked: console.log(text + " clicked")
    }
}
