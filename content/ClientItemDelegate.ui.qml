import QtQuick 6.2
import QtQuick.Controls 6.2

ItemDelegate {
    id: itemDelegate
    anchors.left: parent.right
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom

    Image {
        id: albumImage
        height: parent.height
        width: parent.height > parent.width/10 ? parent.width/10 : parent.height
        anchors.left: parent.left
        anchors.leftMargin: 10
        source: "qrc:/qtquickplugin/images/template_image.png"
        fillMode: Image.PreserveAspectFit
    }

    Rectangle {
        id: clientControl
        color: "#00ffffff"
        anchors.left: albumImage.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom


        ControlButton {
            id: rectangle
        }
    }
}
