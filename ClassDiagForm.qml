import QtQuick 2.0
import QtQuick.Window 2.2
import "colors.js" as Colors

Window {

    id: classWindow
    visible: true
    width: 800
    height: 640

    property var horizontal_menu_height: 80
    property var vertical_menu_height: 150
    property var modsoft_title: "Modsoft"

    Rectangle {
        id: horizontalMenu
        anchors.top: parent.top
        color: Colors.color_light_blue()
        height: horizontal_menu_height
        width: parent.width

        Text {
            id: button
            text: qsTr(modsoft_title)
            anchors.top: parent.top
            anchors.topMargin: 39
            font.pixelSize: 29
            color: Colors.color_white()
        }
    }

    Rectangle {
        id: centerWidget
        anchors.bottom: parent.bottom
        width: parent.width
        height: parent.height - horizontal_menu_height

        Rectangle {
           id: verticalMenu
           anchors.left: parent.left
           height: parent.height
           width: vertical_menu_height
           color: Colors.color_grey_menu()

           Column {
                  anchors.centerIn: parent
                  spacing: 15
                  ButtonMenu {text: "Class"}
                  ButtonMenu {text: "Message"}
                  ButtonMenu {text: "Agregation"}
                  ButtonMenu {text: "Inhearitance"}
              }
        }

        Rectangle {
           id: drawingScene
           anchors.right: parent.right
           height: parent.height
           width: (parent.width - vertical_menu_height)
        }
    }

}
