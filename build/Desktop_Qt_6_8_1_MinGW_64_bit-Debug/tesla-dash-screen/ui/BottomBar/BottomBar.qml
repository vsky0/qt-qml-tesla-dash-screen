import QtQuick 2.15

Rectangle {
    id: bottomBar
    anchors {
        bottom: parent.bottom
        left: parent.left
        right: parent.right
    }
    width: parent.width/8
    height: parent.height/8
    color: "black"

    Text {
        anchors.centerIn: parent
        id: bottomBarText
        text: qsTr("bottom Bar")
        color: "white"
        font.pointSize: 15
        font.bold: true
    }
}
