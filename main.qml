import QtQuick 2.15
import QtQuick.Window 2.15

//import "PhotoViewerCore"
Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Photo Viewer")

    ListModel {
        id: photosModel
        ListElement {
            tag: "Flowers"
        }
        ListElement {
            tag: "Wildlife"
        }
        ListElement {
            tag: "Prague"
        }
    }

    DelegateModel {
        id: albumVisualModel
        model: photosModel
        delegate: AlbumDelegate {}
    }

    GridView {
        id: albumView
        width: parent.width
        height: parent.height
        cellWidth: 210
        cellHeight: 220
        model: albumVisualModel.parts.album
        visible: albumShade.opacity !== 1
    }
}
