import QtQuick 2.15
import QtQuick.Window 2.15
import "movement.js" as Movement

Window {
    id: gameWindow
    width: 890
    height: 930
    visible: true
    title: qsTr("Ant Rover")
    color: "darkgreen"

    Rectangle{
        id: baseRect
        width: 890
        height: 890
        color: "black"
        focus: true

        Keys.onUpPressed: { Movement.moveUp(tileImage); movesCountText.text = Movement.getInfo() }
        Keys.onDownPressed: { Movement.moveDown(tileImage); movesCountText.text = Movement.getInfo() }
        Keys.onRightPressed: { Movement.moveRight(tileImage); movesCountText.text = Movement.getInfo() }
        Keys.onLeftPressed: { Movement.moveLeft(tileImage); movesCountText.text = Movement.getInfo() }

        Grid {
            id: gameBoard
            spacing: 1
            rows: 11
            columns: 11
            anchors.top: baseRect
            anchors.left: baseRect

            // Row 0: All Non-Traversable Labels
            BoardTile { color:"green"; text: "  Ant\nRover"; traversable: 0;}
            BoardTile { color:"blue"; traversable: 0; text: "A"}
            BoardTile { color:"blue"; traversable: 0; text: "B"}
            BoardTile { color:"blue"; traversable: 0; text: "C"}
            BoardTile { color:"blue"; traversable: 0; text: "D"}
            BoardTile { color:"blue"; traversable: 0; text: "E"}
            BoardTile { color:"blue"; traversable: 0; text: "F"}
            BoardTile { color:"blue"; traversable: 0; text: "G"}
            BoardTile { color:"blue"; traversable: 0; text: "H"}
            BoardTile { color:"blue"; traversable: 0; text: "I"}
            BoardTile { color:"blue"; traversable: 0; text: "J"}

            // Row 1: First Tile is Label, Rest Are Traversable
            BoardTile { color:"blue"; traversable: 0; text: "1" }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }

            // Row 2: First Tile is Label, Rest Are Traversable
            BoardTile { color:"blue"; traversable: 0; text: "2" }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }

            // Row 3: First Tile is Label, Rest Are Traversable
            BoardTile { color:"blue"; traversable: 0; text: "3" }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }

            // Row 4: First Tile is Label, Rest Are Traversable
            BoardTile { color:"blue"; traversable: 0; text: "4" }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }

            // Row 5: First Tile is Label, Rest Are Traversable
            BoardTile { color:"blue"; traversable: 0; text: "5" }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }

            // Row 6: First Tile is Label, Rest Are Traversable
            BoardTile { color:"blue"; traversable: 0; text: "6" }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }

            // Row 7: First Tile is Label, Rest Are Traversable
            BoardTile { color:"blue"; traversable: 0; text: "7" }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }

            // Row 8: First Tile is Label, Rest Are Traversable
            BoardTile { color:"blue"; traversable: 0; text: "8" }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }

            // Row 9: First Tile is Label, Rest Are Traversable
            BoardTile { color:"blue"; traversable: 0; text: "9" }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }

            // Row 10: First Tile is Label, Rest Are Traversable
            BoardTile { color:"blue"; traversable: 0; text: "10" }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile {  }
            BoardTile { hasFinish: true }
        }

        Image {
            id: tileImage
            height: 80
            width: 80
            x: 81
            y: 81
            source: "images/antsprite.jpg"
            fillMode: Image.Stretch
            visible: true
            z: 0
            transformOrigin: Item.Center;
            rotation: 0;
        }
    }

    Rectangle{
        id: scoreRect
        x: 0
        y: baseRect.height
        width: gameWindow.width
        height: 40
        color: "gray"

        Text{
            id: movesCountText
            text: qsTr("  Moves: 0" + "        Move History: ")
            anchors.verticalCenter: parent
            font.pointSize: 16
        }

    }
}
