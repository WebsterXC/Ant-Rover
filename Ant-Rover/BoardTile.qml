import QtQuick 2.15

// Defines a configurable board tile that makes up the game grid. It has an optional text field
// (for the grid labels) and an optional image that can be set visible/non-visible to mimic
// player movement.

Item {
    id: root
    height: 80
    width: 80
    property color color: "#fff5ed"
    property string text: ""
    property int traversable: 1                     // Tile is traversable by default.
    property alias showSprite: tileImage.visible    // Alias for player sprite.

    Rectangle {
        id: tileBody
        anchors.fill: parent
        color: root.color

        // Define an optional tile label.
        Text {
            id: tileText
            anchors.centerIn: parent
            font.pointSize: 14
            color: "white"
            text: root.text
        }

        // Define an optional tile image.
        Image {
            id: tileImage
            height: root.height
            width: root.width
            anchors.centerIn: parent
            source: "images/antsprite"
            fillMode: Image.Stretch
            visible: false
        }
    }
}
