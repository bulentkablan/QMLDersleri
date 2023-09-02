import QtQuick
import QtQuick.Shapes

Rectangle {
    id: root
    anchors.fill: parent
    color: "white"

    Shape {
        id: firstShape

        ShapePath {
            id: firstShapePath

            strokeColor: "darkGray"
            strokeWidth: 3
            fillColor: "lightGray"

            startX: 40
            startY: 120

            PathArc {
                x: 200
                y: 120
                radiusX: 50
                radiusY: 50
                useLargeArc: true
            }

            //            PathLine {
            //                x: 40
            //                y: 200
            //            }

            //            PathLine {
            //                x: 200
            //                y: 200
            //            }

            //            PathLine {
            //                x: 200
            //                y: 120
            //            }
        }
    }
}
