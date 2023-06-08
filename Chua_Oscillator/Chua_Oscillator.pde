// Chua chaotic oscillator //

  float x = 0.5;
  float y = 0.25;
  float z = 0.125;
  float dt = 0.005;
  float h = 0.0;
  float alpha = 15.6;
  float beta = 28.58;
  float a = -1.14286;
  float b = -0.714286;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    h = (b * x) + (0.5 * (a - b) * (abs(x + 1.0) - abs(x - 1.0)));
    
    x = nx + dt * (alpha * (ny - nx - h));
    y = ny + dt * (nx - ny + nz);
    z = nz + dt * (-beta * ny);
    
    point(320 + (120 * x), 240 + (480 * y));
        
  }

}
