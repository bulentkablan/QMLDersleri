import QtQuick
import QtQuick.Controls

Item {
    id: root
    anchors.fill: parent

    property int counter: 0

    Image {
        id: name
        anchors.fill: parent
        source: "pythonQt.jpg"
        fillMode: Image.PreserveAspectFit
    }

    Button {
        id: shootBtn
        text: "Shoot"
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.bottomMargin: 10
        anchors.rightMargin: 10

        onClicked: {
            counter++
        }
    }

    Rectangle {
        id: melike
        x: 165
        y: 320
        width: 20
        height: width
        radius: width
        color: "transparent"
        border.color: "red"
        border.width: 2
        visible: counter > 0

        Rectangle {
            width: parent.width * 0.9
            height: parent.border.width
            color: "red"
            rotation: 45
            anchors.centerIn: parent
        }
        Rectangle {
            width: parent.width * 0.9
            height: parent.border.width
            color: "red"
            rotation: -45
            anchors.centerIn: parent
        }
    }

    Rectangle {
        id: ozgur
        x: 393
        y: 265
        width: 20
        height: width
        radius: width
        color: "transparent"
        border.color: "red"
        border.width: 2
        visible: counter > 1

        Rectangle {
            width: parent.width * 0.9
            height: parent.border.width
            color: "red"
            rotation: 45
            anchors.centerIn: parent
        }
        Rectangle {
            width: parent.width * 0.9
            height: parent.border.width
            color: "red"
            rotation: -45
            anchors.centerIn: parent
        }
    }
    Rectangle {
        id: bayram
        x: 325
        y: 280
        width: 20
        height: width
        radius: width
        color: "transparent"
        border.color: "red"
        border.width: 2
        visible: counter > 2

        Rectangle {
            width: parent.width * 0.9
            height: parent.border.width
            color: "red"
            rotation: 45
            anchors.centerIn: parent
        }
        Rectangle {
            width: parent.width * 0.9
            height: parent.border.width
            color: "red"
            rotation: -45
            anchors.centerIn: parent
        }
    }
}
