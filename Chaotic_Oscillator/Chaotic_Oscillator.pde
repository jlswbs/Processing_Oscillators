// Chaotic oscillator //

  float x = 1.0;
  float y = 1.0;
  float z = 1.0;
  float dt = 0.005;
  float a = 0.6;
  float b = 30;
  float c = 0.00000004;
  float d = 0.13;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (ny);
    y = ny + dt * (a * ny - nx - nz);
    z = nz + dt * ((b + ny - c * (exp(nz - 1.0))) / d);
  
    point(270 + (3.3 * x), 240 + (2.5 * y));
        
  }

}
