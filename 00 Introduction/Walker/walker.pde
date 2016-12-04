
class Walker {
  float x = width/2;
  float y = height/2;

  void render() {
    stroke(0);
    point(x,y);
  }
  
  void step() {
    float stepx = random(-1,1);
    float stepy = random(-1,1);
    
    x += stepx;
    y += stepy;
    //println(x);
    //println(y);
    
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
}

Walker w;

void setup() {
  surface.setSize(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.render();
}