function moveLeft(image) {
    if(image.x >= 162){
        image.x = image.x - 81;
    }
}

function moveRight(image) {
    if(image.x <= 729){
        image.x = image.x + 81;
    }
}

function moveUp(image){
    if(image.y >= 162){
        image.y = image.y - 81;
    }
}

function moveDown(image){
    if(image.y <= 729){
        image.y = image.y + 81;
    }
}
