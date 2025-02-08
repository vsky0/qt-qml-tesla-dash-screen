import QtQuick 2.15

Rectangle {
    id: leftScreen
    color: "white"
    width: (parent.width)/3
    anchors {
        top: parent.top
        bottom: bottomBar.top
        right: rightScreen.left
        left: parent.left
    }
    Image {
        id:carRenderer
        width: parent.width*0.85
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
        source: "qrc:/../ui/assets/model-s3.jpg"
        // source: "file:///C:/Users/saiki/Desktop/Learning/qt-qml-cpp/qt-learning/tesla-dash-screen/ui/assets.model-s3.jpg"
    }
}

