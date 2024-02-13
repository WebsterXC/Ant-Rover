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
    property int traversable: 1                         // Tile is traversable by default.
    property alias hasSprite: tileImage.visible         // Alias for player sprite.
    property alias hasObstacle: tileObstacle.visible    // Alias for obstacle
    property alias hasFinish: tileFinish.visible        // Alias for finish line.

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

        // Optional tile image for the player sprite.
        Image {
            id: tileImage
            height: root.height
            width: root.width
            anchors.centerIn: parent
            source: "images/antsprite.jpg"
            fillMode: Image.Stretch
            visible: false
        }

        // Optional tile image for an obstacle.
        Image {
            id: tileObstacle
            height: root.height
            width: root.width
            anchors.centerIn: parent
            source: "images/rocky.PNG"
            fillMode: Image.Stretch
            visible: false
        }

        // Optional tile image for the finish line.
        Image {
            id: tileFinish
            height: root.height
            width: root.width
            anchors.centerIn: parent
            source: "images/apple.PNG"
            fillMode: Image.Stretch
            visible: false
        }
    }
}
