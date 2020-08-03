import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.12
import ViewsModule 1.0
import ResourceProvider 1.0
ApplicationWindow {
    title: qsTr("Contacts List")
    id: root
    visible: true
    Material.theme: Material.Dark
    width: 1280
    height: 720
    minimumHeight: 400
    minimumWidth: 720
    header: ToolBar {
        id: header
        Material.background: Material.backgroundColor
        Material.elevation: 0
        height: 60
        Row {
            height: parent.height
            width: 50
            anchors.right: parent.right
            spacing: 0
            Button{
                id: _view_button
                width: 50
                height: parent.height
                flat: true
                icon.name: "view"
                icon.source: grid.visible? Resources.list_button.listButton
                                         : Resources.grid_button.gridButton
            }
        }
    }
    Grid  {

        id: grid
        visible: false
        anchors.fill: parent
    }
    List  {
        id: list
        anchors.fill: parent
    }
    Connections{
        target: _view_button
        function onClicked(mouse){
            list.visible =  list.visible? false: true
            grid.visible =  grid.visible? false: true
        }
    }

}
