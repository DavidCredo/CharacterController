void calculateAcceleration() {
   PVector direction = inputVector();
   direction.normalize();
  //direction.mult(dist(position.x, position.y, position.x + inputVector().x, position.y + inputVector().y));
   acceleration = direction;
   acceleration.mult(0.2);
}

void checkCollision() {
    if(position.x >= width || position.x <= 0 ) {
        velocity.x *= -1.1;
    } else if (position.y >= height || position.y <= 0) {
        velocity.y *= -1.1;
    } 
}

