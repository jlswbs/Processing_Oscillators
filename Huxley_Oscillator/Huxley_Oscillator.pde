// Hodgkin–Huxley neuron model //

  float iInj = 30.0f;
  float tstep = 0.03f;
  float gBarK = 36.0f;
  float gBarNa = 120.0f;
  float gM = 0.3f;
  float eK = -77.0f;
  float eNa = 50.0f;
  float vRest = -54.4f;
  float v = -65.00f;
  float n = 0.3177f;
  float m = 0.0529f;
  float h = 0.5961f;

float model(){

  float alphan = 0.01f * (v + 55.0f) / (1.0f - exp(-(v + 55.0f) / 10.0f));
  float betan = 0.125f * exp(-(v + 65.0f) / 80.0f);
  float alpham = 0.1f * (v + 40.0f) / (1.0f - exp(-(v + 40.0f) / 10.0f));
  float betam = 4.0f * exp(-(v + 65.0f) / 18.0f);
  float alphah = 0.07f * exp(-(v + 65.0f) / 20.0f);
  float betah = 1.0f / (1.0f + exp(-(v + 35.0f) / 10.0f));
  float dn = (alphan * (1.0f - n)) - (betan * n);
  float dm = alpham * (1.0f - m) - betam * m;
  float dh = alphah * (1.0f - h) - betah * h;
  float dv = -gBarNa * pow(m, 3.0f) * h * (v - eNa) - gBarK * pow(n, 4.0f) * (v - eK) - gM * (v - vRest) + iInj;

  n += (dn * tstep);
  m += (dm * tstep);
  h += (dh * tstep);
  v += (dv * tstep);

  return v;
  
}

void setup() {
  
  size(640, 480);
  frameRate(10);
  background(255);
  
}

void draw() {

  background(255);
  
  for (int i=0;i<640;i++) point(i, 160 + (3 * -model()));

}
