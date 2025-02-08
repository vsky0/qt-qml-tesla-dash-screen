import QtQuick
import "ui/BottomBar"
import "ui/RightScreen"
import "ui/LeftScreen"

Window {
    width: 1200
    height: 720
    visible: true
    title: qsTr("Screen")


    BottomBar {
        id: bottomBar
    }

    RightScreen {
        id: rightScreen
    }

    LeftScreen {
        id: leftScreen
    }
}




