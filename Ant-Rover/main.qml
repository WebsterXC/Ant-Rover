import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: gameWindow
    width: 890
    height: 890
    minimumWidth: gameWindow.width
    minimumHeight: gameWindow.height
    visible: true
    title: qsTr("Ant Rover")
    color: "darkgreen"

    Grid {
        id: gameBoard
        spacing: 1
        rows: 11
        columns: 11
        anchors.top: gameWindow
        anchors.left: gameWindow

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
        BoardTile { hasFinish: true }
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
        BoardTile { hasObstacle: true }
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
        BoardTile { hasSprite: true }
    }
}
