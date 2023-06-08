// Brusselator chemical oscillation //

  float x = 1.0;
  float y = 1.0;
  float dt = 0.01;
  float a = 1.02;
  float b = 1.0;
  float c = 100.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    
    x = nx + dt * ((1.0 - (a + 1.0) * nx + ny * pow(nx, 2.0)) / b);
    y = ny + dt * ((a * nx - ny * pow(nx, 2.0)) / c);
  
    point(60 + (6 * x), 40 + (380 * y));
        
  }

}
