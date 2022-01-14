import QtQuick 2.0
import QtQml.Models 2.14

Package {
    Item {
        Package.name: 'browser'
        GridView {
            id: photoGridView
            model: visualModel.parts.grid
            width: mainWindow.width
            height: mainWindow
        }
    }

    Item {}

    Item {}
}
