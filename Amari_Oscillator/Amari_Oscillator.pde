// Amari oscillator //

float u = 0.0; //state variable u for excitatory neuron
float s_u = 0.0; //external stimulus s_u for excitatory neuron 1
float h_u = 0.0; //resting level h_u for excitatory neuron 1
float c_uu = 1.5; //self interaction weight c_uu neuron1
float d_u = 0.0; //rate of change d_u of excitatory neuron 1

float v = 0.0; //state variable v for neuron 2
float s_v = 0.0; //external stimulus s_u for neuron 2
float h_v = -1.0; //resting level h_u for excitatory neuron 2
float c_vv = 0.0; //self interaction weight c_vv neuron 2
float d_v = 0.0; //rate of change d_v of excitatory neuron 2

float c_uv = -1.5;
float c_vu = 1.5;

float c_n = 0.1;
float dt = 0.01;
float beta = 20;

float sigmoid(float x,float beta){ return 1.0/(1.0 + exp(-x * beta)); }

void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {

    d_u = dt * (- u + s_u + h_u + c_uu * sigmoid(u, beta) + c_uv * sigmoid(v, beta) + c_n);
    u = u + d_u;
    
    d_v = dt * (- v + s_v + h_v + c_vv * sigmoid(v, beta) + c_vu * sigmoid(u, beta));
    v = v + d_v;
  
    point(220 + (500 * u), 260 + (400 * v));   
   
  }
  
}
