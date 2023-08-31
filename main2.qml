import QtQuick

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    //Gelen değerleri 0.0 ile 1.0 arasına alan fonksiyon
    function calculateColorNumber(value) {
        if (value > 100) {
            value = 100
        }
        if (value < 0) {
            value = 0
        }

        return value.toFixed(0) / 100
    }

    Rectangle {
        width: 100
        height: 100
        // Qt.rgba 'nın değerleri 0.0 ile 1.0 arasında olmalıdır
        color: Qt.rgba(calculateColorNumber(x), calculateColorNumber(y),
                       calculateColorNumber(x + y), 1)

        border.width: 2
        border.color: "black"
        radius: 10

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            drag.target: parent
        }
    }
}
