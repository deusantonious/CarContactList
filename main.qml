import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.12
import ViewsModule 1.0
ApplicationWindow {
    id: root
    visible: true
    Material.theme: Material.Dark
    width: 1280
    height: 720
    title: qsTr("Contacts List")
   header: ToolBar {
        id: header
        Material.background: Material.backgroundColor
        Material.elevation: 0
        height: parent.height/10
        Row {
            height: parent.height
            width: 105
            anchors.right: parent.right
            spacing: 0
            Button{
                width: 50
                height: parent.height
                flat: true
                icon.name: "search"
                icon.source: "qml/images/search.svg"
            }
            Button{
               width: 50
                height: parent.height
                flat: true
                icon.name: "menu"
                icon.source: "qml/images/menu.svg"
            }
        }
    }
    List {
        anchors.fill: parent
    }
}
