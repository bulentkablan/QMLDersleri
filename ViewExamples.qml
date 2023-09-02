import QtQuick
import QtQuick.Controls

//ScrollView {
//    width: 200
//    height: 200

//    Label {
//        text: "ABC"
//        font.pixelSize: 224
//    }
//}
StackView {
    id: mainStack
    anchors.fill: parent
    initialItem: PythonExample {}

    Timer {
        running: true
        interval: 2000
        onTriggered: {
            mainStack.push("OpacityAnimation.qml")
        }
    }

    Timer {
        running: true
        interval: 5000
        onTriggered: {
            mainStack.pop()
        }
    }
}
