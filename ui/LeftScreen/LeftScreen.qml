import QtQuick 2.15

Rectangle {
    id: leftScreen
    color: "red"
    width: (parent.width)/3
    anchors {
        top: parent.top
        bottom: bottomBar.top
        right: rightScreen.left
        left: parent.left
    }
}

