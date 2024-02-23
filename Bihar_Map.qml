import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.2


Window {
    id: biharMapWindow
    width: 1950
    height: 1200
    visible: true
    title: "Bihar Map"
    x: 0
    flags: Qt.SplashScreen | Qt.FramelessWindowHint


    Image {
        id: bihar
        width: 1900
        height: 1000
        source: "qrc:/new/prefix1/Maps/bihar-district-map-in-hindi.jpg"
    }
    Button {
        id: biharMapCloseButton
        text: qsTr("Close")
        x: 1860
        y: 5
        font.pointSize: 10
        onClicked: {
            // Add your onClicked logic hereq
            biharMapWindow.close();
        }

        // Set background color to red
        background: Rectangle {
            color: "#FF0000" // Red color
            radius: 5 // Border radius
            width: 50
            height: 30
        }

        // Text label for the button
        Text {
            color: "blue"
            font.pixelSize: 20
            anchors.centerIn: parent
//             text: biharMapCloseButton.text

        }
        ToolTip.visible: hovered
        ToolTip.text: "Click to Close"
    }


}
