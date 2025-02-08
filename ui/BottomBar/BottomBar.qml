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

    Image {
        id: carSettingsIcon
        anchors {
            left: parent.left
            leftMargin: 30
            verticalCenter: parent.verticalCenter
        }
        height: parent.height*0.85
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/car-icon.png"
    }
}
