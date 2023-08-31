import QtQuick
import QtQuick.Window

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function calculateCoorninat(value) {
        return value.toFixed(0)
    }

    Rectangle {
        id: rectCenter
        width: 100
        height: 100
        color: "yellow"
        x: 300
        y: 200

        Text {
            id: mouseX
            x: 30
            text: "x: " + calculateCoorninat(rectCenter.x)
        }
        Text {
            id: mouseY
            anchors.top: mouseX.bottom
            anchors.topMargin: 10
            anchors.left: mouseX.left
            text: "y: " + calculateCoorninat(rectCenter.y)
        }

        MouseArea {
            id: firstMouseArea
            anchors.fill: parent
            drag.target: parent
            onClicked: {
                parent.color = "orange"
                console.log("ilk consol mesajım")
            }
        }
    }

    Rectangle {
        id: rectRight
        width: 100
        height: 100
        color: "blue"
        anchors.left: rectCenter.right
        anchors.top: rectCenter.top
    }

    Rectangle {
        id: rectLeft
        width: 100
        height: 100
        color: "red"
        anchors.right: rectCenter.left
        anchors.top: rectCenter.top
    }

    Rectangle {
        id: rectTop
        width: 100
        height: 100
        color: "green"
        anchors.bottom: rectCenter.top
        anchors.left: rectCenter.left
    }

    Rectangle {
        id: rectBottom
        width: 100
        height: 100
        color: "gray"
        anchors.top: rectCenter.bottom
        anchors.left: rectCenter.left
    }

    Image {
        id: firstImage
        width: 200
        source: "oyk.png"
        fillMode: Image.PreserveAspectFit
    }
}
