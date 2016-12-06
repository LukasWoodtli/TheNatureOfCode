
float increment = 0.02;

float zoff = 0;

void setup() {
  surface.setSize(640, 360);
}

void draw() {
  background(0);

  loadPixels();

  float xoff = 0.0;

  for (int x=0; x<width; x++) {
    xoff += increment;
    float yoff = 0.0;
    for (int y=0; y<height; y++) {
      yoff += increment;

      //float bright = noise(xoff,yoff)*255;
      float bright = map(noise(xoff, yoff, zoff), 0, 1, 0, 255);
      //float bright = random(0,255);

      pixels[x+y*width] = color(bright);
    }
  }

  updatePixels();
  
  zoff += increment;
}