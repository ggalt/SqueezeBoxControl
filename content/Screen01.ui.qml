/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import SqueezeBoxControl

Rectangle {
    id: rectangle
    // width: Constants.width
    // height: Constants.height
    width: 1080
    height: 1920


    color: Constants.backgroundColor

    Rectangle {
        id: header
        height: 100
        color: Constants.backgroundColor
        border.width: 2
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top

        Label {
            id: txtServerStatus
            text: qsTr("Logitech Media Server Status: ")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 10
            font.pointSize: 24
        }

        Rectangle {
            id: btnMainMenu
            width: parent.height
            color: "#00ffffff"
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            Label {
                id: lblMainMenu
                text: "\u2630"
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
            }

            MouseArea {
                id: mainMenuMouseArea
                anchors.fill: parent
            }
        }
    }

    StackView {
        id: stackView
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: header.bottom
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0

        Page {
            id: clientPage
            anchors.fill: parent

            ListView {
                id: listView
                anchors.fill: parent
                model: ListModel {
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }

                    ListElement {
                        name: "Red"
                        colorCode: "red"
                    }

                    ListElement {
                        name: "Blue"
                        colorCode: "blue"
                    }

                    ListElement {
                        name: "Green"
                        colorCode: "green"
                    }
                }
                delegate: Item {
                    x: 5
                    width: 80
                    height: 40
                    Row {
                        id: row1
                        spacing: 10
                        Rectangle {
                            width: 40
                            height: 40
                            color: colorCode
                        }

                        Text {
                            text: name
                            anchors.verticalCenter: parent.verticalCenter
                            font.bold: true
                        }
                    }
                }

                ClientItemDelegate {
                    id: itemDelegate
                }
            }
        }
    }

}
