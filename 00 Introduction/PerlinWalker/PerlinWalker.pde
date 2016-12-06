class Walker {
  float x, y;
  float tx, ty;
  
    Walker() {
    tx = 0;
    ty = 10000;
  }
  
  void render() {
    background(255);
    fill(255,10);
    ellipse(x,y,16,16);

  }
  
  void step() {
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
    
    tx += 0.01;
    ty += 0.01;
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