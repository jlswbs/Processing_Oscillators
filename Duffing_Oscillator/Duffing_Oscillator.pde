// Duffing chaotic oscillator //

  float x = 0.0;
  float y = 0.0;
  float dt = 0.01;
  float a = 0.25;
  float b = 0.3;
  float w = 1.0;
  float t = 0.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
        
    x = nx + dt * (ny);
    y = ny + dt * (nx - pow(nx, 3.0) - a * ny + b * cos(w * t));
        
    t = t + dt;
  
    point(320 + (180 * x), 240 + (220 * y));
        
  }

}
