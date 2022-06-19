import QtQuick 2.15
import Contacts 1.0
GridView {
    id: grid
    anchors.fill: parent

    cellWidth: root.width/(root.width/300)
    cellHeight: 320
    //cellWidth: 320
    model: ContactsModel {

    }

    delegate: GridDelegate {

    }
}
