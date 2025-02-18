import QtQuick 2.15
import QtLocation
import QtPositioning

Rectangle {
    id: rightScreen
    // color: "yellow"
    width: parent.width*2/3
    anchors {
        top: parent.top
        bottom: bottomBar.top
        right: parent.right
    }

    Plugin {
        id: mapPlugin
        name: "osm" // using the opensourcemap
    }
    Map {
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(17.4065, 78.4772) // set to hyderabad
        zoomLevel: 14
    }

    Image {
        id: lockIcon
        anchors {
            left: parent.left
            top: parent.top
            leftMargin: 30
        }
        width: parent.width/50
        fillMode: Image.PreserveAspectFit
        source :(sytemHandler.carLocked ? "qrc:/../ui/assets/padlock.png": "qrc:/../ui/assets/padlock-unlock.png");
        MouseArea {
            anchors.fill: parent
            onClicked: systemHandler.setCarLocked( !systemHandler.carLocked )
        }
    }

    Text {
        id: dateTimeDisplay
        anchors {
            left: lockIcon.right
            leftMargin: 40
            bottom: lockIcon.bottom
        }

        font.pixelSize: 15
        font.bold: true
        text: sytemHandler.currentTime
    }

    Text {
        id: tempDisplay
        anchors {
            left: dateTimeDisplay.right
            leftMargin: 40
            bottom: lockIcon.bottom
        }

        font.pixelSize: 15
        font.bold: true
        text: sytemHandler.outTemp + " C"
    }

    Text {
        id: userNameDisplay
        anchors {
            left: timeDisplay.right
            leftMargin: 40
            bottom: lockIcon.bottom
        }

        font.pixelSize: 15
        font.bold: true
        text: sytemHandler.userName + " C"
    }
}
