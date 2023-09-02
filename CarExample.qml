import QtQuick

Rectangle {
    anchors.fill: parent
    color: "gray"

    Rectangle {
        id: merkez
        width: parent.width / 2
        height: parent.height / 5
        color: "blue"
        x: parent.width / 4
        y: parent.height / 2
        z: 2
    }

    Rectangle {
        id: ustParca
        width: merkez.width * 0.8
        height: merkez.height * 2
        radius: width / 2
        anchors.bottom: merkez.bottom
        anchors.horizontalCenter: merkez.horizontalCenter
        color: "#800000"
    }

    Rectangle {
        id: solTeker
        width: merkez.width * 0.2
        radius: width
        height: width
        color: "black"
        anchors.left: merkez.left
        anchors.top: merkez.bottom
        anchors.leftMargin: width / 2
        anchors.topMargin: -10
        z: 5
    }

    Rectangle {
        id: sagTeker
        width: merkez.width * 0.2
        radius: width
        height: width
        color: "black"
        anchors.right: merkez.right
        anchors.top: merkez.bottom
        anchors.rightMargin: width / 2
        anchors.topMargin: -10
        z: 5
    }

    Rectangle {
        id: far
        width: solTeker.width
        height: width / 2
        anchors.top: merkez.top
        anchors.left: merkez.left
        anchors.leftMargin: -20
        anchors.topMargin: 10
        radius: height / 5
    }
}
