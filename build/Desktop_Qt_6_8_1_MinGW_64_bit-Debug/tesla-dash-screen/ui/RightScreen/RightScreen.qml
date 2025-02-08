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
        center: QtPositioning.coordinate(17.4065, 78.4772) // set to oslo
        zoomLevel: 14
    }
}
