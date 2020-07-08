import QtQuick 2.0
import QtQuick.Controls.Material 2.12
import ResourceProvider 1.0
Rectangle {
    id: root
    color: "#202020"
    width: grid.cellWidth
    height: grid.cellHeight
    opacity: _delegateArea.pressed ? 0.8
                                   : 1

    MouseArea {
        id: _delegateArea
        anchors.fill: root
    }
    Column {
        spacing: 20
        anchors.centerIn: parent
        ContactImage {
            boundingRadius: root.height - 100
            borderSize: 9
        }
        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 10
            Text{
                font.pointSize: 24
                color: "#FFFFFF"
                text: name
            }
            Text{
                font.pointSize: 24
                color: "#FFFFFF"
                text: surname
            }
        }
    }
}
