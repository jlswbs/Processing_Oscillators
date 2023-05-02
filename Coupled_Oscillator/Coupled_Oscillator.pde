// Coupled oscillator //

float x = 0.1;
float y = 0.1;
float dt = 0.05;
float a = 3.7;


void setup() {
  
  size(640, 480);
  background(255);
  
}
 

void draw() {
  
  for (int i=0; i<100; i++) {
    
    int cr = int(random(256));
    int cg = int(random(cr));
    int cb = int(random(cg));
    
    float nx = x;
    float ny = y;
        
    x = nx + dt * (a * ny * (ny - 1));
    y = ny + dt * (nx);
 
    if (x > 1.0) { x = 0.1; stroke(cr, cg, cb); }
    if (x < -1.0) { x = -0.1; stroke(cr, cg, cb); }
        
    point(320 + (250 * x), 200 + (290 * y));

  }

}
