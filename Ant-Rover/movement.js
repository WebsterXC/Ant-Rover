var moveCount = 0;
var moveString = "";

function moveLeft(image) {
    if(image.x >= 162){
        image.x = image.x - 81;
        moveCount = moveCount + 1;
        moveString = moveString + "L";
        image.rotation = 270;
    }
}

function moveRight(image) {
    if(image.x <= 729){
        image.x = image.x + 81;
        moveCount = moveCount + 1;
        moveString = moveString + "R";
        image.rotation = 90;
    }
}

function moveUp(image){
    if(image.y >= 162){
        image.y = image.y - 81;
        moveCount = moveCount + 1;
        moveString = moveString + "U";
        image.rotation = 0;
    }
}

function moveDown(image){
    if(image.y <= 729){
        image.y = image.y + 81;
        moveCount = moveCount + 1;
        moveString = moveString + "D";
        image.rotation = 180;
    }
}

function getInfo(){
    return qsTr("  Moves: " + moveCount + "        Move History: " + moveString)
}
