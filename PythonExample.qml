import QtQuick
import QtQuick.Controls

Item {

    anchors.fill: parent

    Button {
        id: giveMeNumberBtn
        anchors.centerIn: parent
        text: "Bana bir numara ver"
        onClicked: {
            elif.updateNumber()
        }
    }

    Text {
        id: numberTxt
        text: ""
        anchors.top: giveMeNumberBtn.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: giveMeNumberBtn.horizontalCenter
    }

    Text {
        id: bulentTxt
        text: ""
        anchors.top: numberTxt.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: numberTxt.horizontalCenter
    }

    Connections {
        target: elif
        function onNextNumber(number) {
            numberTxt.text = number
        }
        //        function onBulentNumber(number) {
        //            bulentTxt.text = number
        //        }
        function onBulentString(value) {
            bulentTxt.text = value
        }
    }
}
