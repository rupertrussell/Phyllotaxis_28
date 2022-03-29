// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/KWoJgHFYWxY
// Coding Challenge #30: Phyllotaxis
// http://algorithmicbotany.org/papers/abop/abop-ch4.pdf
// updated 12 July 2020 
// Modified by Rupert Russell for use with Redbubble 
// artwork on redbubble at:  https://www.redbubble.com/shop/ap/25052792

int n =  1800022; 
float c = 8.5;
float start = 0;
float hu ;
float radius = 30;

float rrr, ggg, hhh, sss, bbb;

void setup() {

  size(7632, 6480);
  colorMode(HSB, 5, 255, 255);
  background(0);
  // stroke(0);
  noStroke();
  strokeWeight(.5);
  println("Running");
}

// https://raw.githubusercontent.com/CodingTrain/Rainbow-Code/master/challenges/CC_30_Phyllotaxis/CC_30_Phyllotaxis.pde

void draw() {
hhh = 0;
  noLoop();
  translate(width / 2, height / 2);
  for (int i = 0; i < n; i++) {
    float a = i * radians(137.52); // radians(137.51);
    float r = c * sqrt(i);
    float x = r * cos(a);
    float y = r * sin(a);

    rrr = (a + r) % 200;
    ggg = (a - r) % 220;
    bbb = a % 256;
    // fill(rrr,ggg,bbb);

    // hhh = (a % ( r / 270) ); 
    hhh = hhh + 0.000012;
    
    sss = (a - r) % 256;
    bbb = a % 256;

    fill(hhh, sss, bbb);

    radius = radius + 0.00001;
    println("radius = " + radius);

    ellipse(x, y, radius, radius);
  }
  println("Phyllotaxis-28-" + n + "-" + hhh + ".png");
  save("Phyllotaxis-28-" + n + "-" + hhh + ".png");
  println("saved");
  exit();
}
