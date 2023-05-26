// Hopf oscillator //

  float x = 0.01;
  float y = 0.01;
  float dt = 0.01;
  float p = 0.11;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
        
    x = nx + dt * (-ny + nx * (p - (pow(nx, 2.0) + pow(ny, 2.0))));
    y = ny + dt * (nx + ny * (p - (pow(nx, 2.0) + pow(ny, 2.0))));
  
    point(320 + (600 * x), 240 + (600 * y));
        
  }

}
