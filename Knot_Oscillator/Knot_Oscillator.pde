// Knot geometric oscillator //

  float x = 0.0;
  float y = 0.0;
  float t = 0.0;
  float a = 1.5;
  float dt = 0.01;
  

void setup() {
  
  size(640, 480);
  background(255);

}

void draw() {
  
  for (int i=0; i<100; i++) {
  
    float nx = x;
    float ny = y;
    
    x = (2.0 + sin(ny * t)) * cos(t);
    y = (2.0 + cos(a * t)) * sin(t);
    
    t = t + dt;
  
    point(320 + (90 * x), 240 + (70 * y));
    
  }
  
}
