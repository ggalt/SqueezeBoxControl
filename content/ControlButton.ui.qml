import QtQuick 6.2

MouseArea {
    objectName: "controlButton"
    property alias imageSource: controlImage.source

    state: "unPressedState"

    Rectangle {
        id: backgroundRect
        anchors.fill: parent
        opacity: 0.0
    }

    Image {
        id: controlImage
        anchors.fill: parent
        asynchronous: true
        smooth: true

        fillMode: Image.PreserveAspectFit
    }
}
