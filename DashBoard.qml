import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.2


Window {
    id: mainWindow
    width: 1950
    height: 1000
    visible: true
    title: "Dashboard Window"
    x: 0

    // Rectangle as a border
    Rectangle{
        id: rectangle
        anchors.fill: parent
        width: parent.width // Responsive width
        height: parent.height // Responsive height
        color: "indigo"
        border.color: "lime"
        border.width: 4
        radius: 10

        //Click on Button to see the State Map Label
        Label{
            id:label
            font.family: modelData
            text: qsTr("Click on Button to see the State Map")
            font.bold :true
            font.pixelSize: 40
            color: "olivedrab"
            y: 30

            anchors {
                horizontalCenter: parent.horizontalCenter
            }
        }

        //Bihar Button
        StackView{
            id:biharStackView
            anchors.fill: parent
            initialItem: firstPage
        }
        Component{
            id:bihar_map
            Bihar_Map{}
        }
        Button {
            id: loginButton
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: password.bottom
                topMargin: 30
            }
            width: 150
            height: 60
            x: 50
            y: 100
            text: qsTr("Bihar")
            font.pixelSize: 20
            font.bold: true
            hoverEnabled: true

            background: Rectangle {
                id: buttonRect
                gradient: Gradient {
                    GradientStop { position: 0; color: "#9ACD32" }
                    GradientStop { position: 1; color: "#6B8E23" }

                }
                border.color: "#556B2F"
                border.width: 1
                radius: 5
            }
            contentItem: Text {
                text: loginButton.text
                font: loginButton.font
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: "#FFFFFF"
            }
            onClicked: {
                stackView.push(bihar_map)

            }
            ToolTip.visible: hovered
            ToolTip.text: "Click to See Bihar Map"

        }
    }
}
