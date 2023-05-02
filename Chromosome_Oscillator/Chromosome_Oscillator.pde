// Chromosome oscillations in mitosis //

  float x = 38.0;
  float y = 11.0;
  float dt = 0.007;
  float N = 100.0;
  float ku = 1.65;
  float ns = 11.5;
  float neta = 5.2;
  float V0 = 2.38 / 60.0;
  float f = 2.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}
 

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float kbr = 266.0 / pow(y, 2.0);
    
    x = nx + dt * (kbr * (N - nx) - ku * exp(f * (ns+neta) / (nx+neta)) * nx);
    y = ny + dt * (V0 * (nx - ns) / (nx + neta));
  
    point(50+(10*x), -630+(80*y));

  }

}
