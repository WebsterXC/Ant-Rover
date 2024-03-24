import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    // 6-5
    Rectangle{
        anchors.fill: parent
        color: "white"
        focus: true

        Image {
            id: ant
            source: "ant_images/AntImages/Ant_sideways_left.png" //start facing right
            focus: true //accept keyboard events
            x: (parent.width/2)
            y: (parent.height/2)
        }

        function moveLeft() {
            ant.x -= 10;
            ant.source = "ant_images/AntImages/Ant_sideways_left.png";
        }

        function moveRight() {
            ant.x += 10;
            ant.source = "ant_images/AntImages/Ant_sideways_right.png";
        }

        function moveUp() {
            ant.y -= 10;
            ant.source = "ant_images/AntImages/Ant_up.png";
        }

        function moveDown() {
            ant.y += 10;
            ant.source = "ant_images/AntImages/Ant_down.png";
        }

        Keys.onRightPressed: moveRight()
        Keys.onLeftPressed: moveLeft()
        Keys.onUpPressed: moveUp()
        Keys.onDownPressed: moveDown()

    }
}
