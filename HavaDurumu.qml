import QtQuick
import QtQuick.Controls

Item {

    Rectangle {
        id: textInputRect
        width: 200
        height: 50
        border.width: 2
        border.color: "gray"
        TextInput {

            anchors.centerIn: parent
            id: textInput
            text: "City"
        }
    }

    Button {
        id: getDataBtn
        text: "Get City Weather"
        anchors.left: textInputRect.right
        anchors.leftMargin: 30
        onClicked: {

            //weatherApp.getWeather(textInput.text)
        }
    }

    Text {
        id: location
        text: ""
        anchors.top: textInputRect.bottom
        anchors.topMargin: 10
    }
    Text {
        id: temp
        text: ""
        anchors.top: location.bottom
        anchors.topMargin: 10
    }
    Text {
        id: humidity
        text: ""
        anchors.top: temp.bottom
        anchors.topMargin: 10
    }
    Text {
        id: condition
        text: ""
        anchors.top: humidity.bottom
        anchors.topMargin: 10
    }

    Component.onCompleted: {
        weatherApp.getWeather("Bolu")
    }

    Connections {
        target: weatherApp
        function onLocationSignal(value) {
            console.log(value)
            location.text = value
        }
        function onTemperatureSignal(value) {
            temp.text = value
        }
        function onHumiditySignal(value) {
            humidity.text = value
        }
        function onConditionSignal(value) {
            condition.text = value
        }
    }
}
