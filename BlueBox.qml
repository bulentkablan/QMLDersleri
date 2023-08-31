import QtQuick

Rectangle {
    id: root

    property string txtValue: "Blue Box"

    width: 200
    height: 50
    color: "blue"

    Text {
        text: txtValue
        anchors.verticalCenter: parent.verticalCenter
        color: "white"
    }
}
