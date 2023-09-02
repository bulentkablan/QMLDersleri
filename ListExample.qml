import QtQuick

Item {
    anchors.fill: parent

    ListView {
        id: listVeiwId
        anchors.centerIn: parent
        spacing: 4
        width: 400
        height: 300

        model: ListModel {
            ListElement {
                isim: "bülent"
                yas: "19"
                soyisim: "kablan"
                memleket: "Gümüşhane"
            }
            ListElement {
                isim: "nikita"
                yas: "15"
                soyisim: "Türkmen"
                memleket: "Rusya"
            }
        }

        delegate: Rectangle {
            width: listVeiwId.width
            height: 80
            color: "red"

            Text {
                id: isimTxt
                x: 30
                y: 20
                text: "isim: " + isim
                color: "white"
            }

            Text {
                id: soyisimTxt
                text: "soyisim: " + soyisim
                x: 30
                y: 50
                color: "white"
            }
        }
    }
}
