import QtQuick
import QtQuick.Window

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    // Objenin üzerine basılı iken boyutunun küçültülmesi
    //    Timer {
    //        interval: 20
    //        running: true
    //        repeat: true
    //        onTriggered: {
    //            if (mouseAreaRect.pressed && rectBlue.height > 120) {
    //                rectBlue.height--
    //            }

    //            if (!mouseAreaRect.pressed) {
    //                rectBlue.height = 150
    //            }
    //        }
    //    }

    //    Rectangle {
    //        id: rectBlue
    //        width: 100
    //        height: 150
    //        anchors.centerIn: parent
    //        color: "blue"

    //        MouseArea {
    //            id: mouseAreaRect
    //            anchors.fill: parent
    //        }
    //    }

    // ------------------------------------------------------------------------------------------------------

    // Alana tıklandıktan 2 saniye sonra state'in değiştirilmesi
    //    Item {
    //        id: trafficLightItem

    //        state: "stop" // stop - go

    //        Timer {
    //            id: firstTimer
    //            interval: 2000
    //            //            running: true
    //            //            repeat: true
    //            onTriggered: {
    //                trafficLightItem.state = trafficLightItem.state === 'stop' ? "go" : "stop"
    //            }
    //        }

    //        states: [
    //            State {
    //                name: "stop"
    //                PropertyChanges {
    //                    target: redLight
    //                    color: "red"
    //                }
    //                PropertyChanges {
    //                    target: greenLight
    //                    color: "black"
    //                }
    //            },
    //            State {
    //                name: "go"
    //                PropertyChanges {
    //                    target: redLight
    //                    color: "black"
    //                }
    //                PropertyChanges {
    //                    target: greenLight
    //                    color: "green"
    //                }
    //            }
    //        ]

    //        transitions: [
    //            Transition {
    //                from: "stop"
    //                to: "go"

    //                ColorAnimation {
    //                    target: redLight
    //                    properties: "color"
    //                    duration: 500
    //                }
    //                ColorAnimation {
    //                    target: greenLight
    //                    properties: "color"
    //                    duration: 500
    //                }
    //            },
    //            Transition {
    //                from: "go"
    //                to: "stop"

    //                ColorAnimation {
    //                    target: redLight
    //                    properties: "color"
    //                    duration: 500
    //                }
    //                ColorAnimation {
    //                    target: greenLight
    //                    properties: "color"
    //                    duration: 500
    //                }
    //            }
    //        ]
    //        Rectangle {
    //            width: 300
    //            height: 400
    //            x: 20
    //            y: 40
    //            color: white
    //            border.color: "black"
    //            border.width: 2

    //            // if  ? true : false
    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: {
    //                    firstTimer.running = true
    //                }
    //            }

    //            Rectangle {
    //                id: redLight
    //                width: 150
    //                height: 150
    //                x: 50
    //                y: 20
    //                color: "red"
    //                radius: width
    //            }

    //            Rectangle {
    //                id: greenLight
    //                width: 150
    //                height: 150
    //                x: 50
    //                y: 200
    //                color: "black"
    //                radius: width
    //            }
    //        }
    //    }

    // ------------------------------------------------------------------------------------------------------

    // Objenin window objesinin köşelerinde dolaşmasını sağlayan kısım
    //    Rectangle {
    //        id: animationRect
    //        width: 50
    //        height: 50
    //        x: 0
    //        y: 0
    //        color: "blue"

    //        Behavior on x {

    //            id: behaviorId
    //            NumberAnimation {
    //                duration: 500
    //            }
    //        }

    //        Behavior on y {

    //            id: behaviorId2
    //            NumberAnimation {
    //                duration: 1000
    //            }
    //        }

    //        function moveFunc() {
    //            if (animationRect.x === 0 && animationRect.y === 0) {
    //                animationRect.x = 590
    //            } else if (animationRect.x === 590 && animationRect.y === 0) {
    //                animationRect.y = 430
    //            } else if (animationRect.x === 590 && animationRect.y === 430) {
    //                animationRect.x = 0
    //            } else {
    //                animationRect.y = 0
    //            }
    //        }

    //        MouseArea {
    //            anchors.fill: parent
    //            onClicked: {
    //                animationRect.moveFunc()
    //            }
    //        }
    //    }

    // ------------------------------------------------------------------------------------------------------

    // Olusturulan componentin Kolon içinde Repeater ile kullanılması

    //    Column {
    //        spacing: 5

    //        Repeater {
    //            model: ["Bulent", "Nikita", "Burcin"]
    //            delegate: BlueBox {
    //                txtValue: modelData
    //            }
    //        }
    //    }
}
