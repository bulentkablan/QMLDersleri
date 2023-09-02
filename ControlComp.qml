import QtQuick
import QtQuick.Controls
import QtQuick.Window

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ComboBox {
        id: comboBoxId
        anchors.top: busyIndicator.bottom
        anchors.topMargin: 10

        model: ListModel {
            ListElement {
                text: "Bulent"
            }
            ListElement {
                text: "Bulent 2"
            }
            ListElement {
                text: "Bulent 3"
            }
        }
    }

    BusyIndicator {
        id: busyIndicator
        running: true
        anchors.top: checkBoxText.bottom
        anchors.topMargin: 10
    }

    Text {
        id: checkBoxText
        text: comboBoxId.currentText
        anchors.top: checkBox.bottom
    }

    CheckBox {
        id: checkBox
        x: 20
        y: 100
        text: "Click me"
        checked: true
    }

    Rectangle {
        id: rectForBtn
        width: 50
        height: 50
        x: 100
        y: 20
        color: "red"
        visible: checkBox.checked
    }

    Button {
        id: firstBtn
        x: 20
        y: 20
        text: "Click me!"
        enabled: false

        contentItem: Text {
            id: name
            text: firstBtn.text
            color: "black"
        }

        background: Rectangle {
            color: "blue"
            radius: 5
            opacity: enabled ? 1 : 0.3
        }

        onClicked: {
            console.log("Butona tıklandı")
            rectForBtn.color = "blue"
        }
    }
}
