import QtQuick 2.15
import QtQuick.Controls.Material 2.12
import Contacts 1.0
GridView {
    id: grid
    anchors.fill: parent
    cellHeight: 320
    cellWidth: 320
    model: ContactsModel {

    }

    delegate: GridDelegate {

    }
}
