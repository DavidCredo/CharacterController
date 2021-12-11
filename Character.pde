PVector position = new PVector(10,10);
PVector velocity = new PVector(0,0);
PVector acceleration = new PVector(0,0);


void drawCharacter() {
    fill(#F4442E);
    strokeWeight(1);
    ellipseMode(CENTER);
    ellipse(position.x, position.y, 40, 40);    
    velocity.add(acceleration);
    velocity.limit(5);
    position.add(velocity);
  
}
