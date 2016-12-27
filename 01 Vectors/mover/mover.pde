
class Mover {
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    velocity.limit(10);
    acceleration = new PVector(-0.001, 0.01);
  }
  
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
  }
  
  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
    
    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}

Mover mover;

void setup() {
  size(640, 360);
  mover = new Mover();
}

void draw() {
  background(255);
 
  mover.update();
  mover.checkEdges();
  mover.display();
}