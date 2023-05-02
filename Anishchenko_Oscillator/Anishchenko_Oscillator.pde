// Anishchenko-Astakhov chaotic oscillator //

  float x = 1.0;
  float y = 1.0;
  float z = 1.0;
  float dt = 0.005;
  float m = 1.42;
  float g = 0.097;
  float I = 0.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    if (x > 0) I = 1.0;
    if (x <= 0) I = 0.0;
        
    x = nx + dt * (m * nx + ny - nx * nz);
    y = ny + dt * (- nx);
    z = nz + dt * (- (g * nz) + (g * I) * pow(nx, 2.0));
  
    point(280 + (60 * x), 180 + (50 * y));
        
  }

}
