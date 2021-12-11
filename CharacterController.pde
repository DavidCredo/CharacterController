void setup() {
 size(512, 512);   
}

void draw() {
    background(#020122);
    calculateAcceleration();
    //calculateDesiredLocation();
    checkCollision();
     drawCharacter();
}

PVector inputVector() {
    PVector directionVector = new PVector(0,0);
    if (keyPressed) {
        if (key == 'w') {
           directionVector.set(0, -10);
        
        } else if(key == 'a') {
             directionVector.set(-10, 0);
           
        } else if(key == 's') {
            directionVector.set(0, 10);
        } else if(key == 'd') {
            directionVector.set(10, 0);
        }
    }
    return directionVector; 
}


/*
PVector calculateDesiredLocation() {
      PVector desired = PVector.add(position, inputVector());
    if (keyPressed) {
         desired = PVector.add(position, inputVector());
        println("Desired location " + desired);
        println("Current location " + position);
        strokeWeight(10);
        line(position.x, position.y, desired.x, desired.y);
}
return desired;
}
*/