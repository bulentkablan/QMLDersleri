import QtQuick

Item {

    Image {
        x: 100
        id: burcinImage
        source: "burcin.png"
        width: 400
        height: 400
    }

    Image {
        id: ghost
        source: "ghost.jpg"
    }

    SequentialAnimation {
        loops: Animation.Infinite
        running: true

        OpacityAnimator {
            target: ghost
            from: 0
            to: 1
            duration: 1000
        }

        OpacityAnimator {
            target: ghost
            from: 1
            to: 0
            duration: 1000
        }
    }
}
