import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    id: rootWindow
    visible: true
    width: 400
    height: 360
    title: qsTr("ModSoft")

    MainForm {

        seqDiagMouseArea.onClicked: {
            var component = Qt.createComponent("SequenceDiagForm.qml");
            var win = component.createObject(rootWindow);
            win.show();
        }
        exitMouseArea.onClicked: {
            Qt.quit();
        }
        classDiagMouseArea.onClicked: {
            var component = Qt.createComponent("ClassDiagForm.qml");
            var win = component.createObject(rootWindow);
            win.show();
        }
        anchors.fill: parent
    }
}
