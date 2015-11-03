//declare variables

float [] x = new float[255];
float [] y = new float[255];
float [] velX = new float[255];
float [] velY = new float[255];
float [] diam = new float[255];

void setup() {
  //set size of canvas
  size(800, 600);
  //initialize variables
  for(int i = 0; i < 255; i++){
    x[i] = random(0,height);
    y[i] = random(0,width);
    velX[i] = random(-10,10);
    velY[i] = random(-10,10);
    diam[i] = random(50);
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);
  for (int i = 0; i < 255; i++){
  //draw ball
    fill(i,i,i);
    ellipse(x[i], y[i], diam[i], diam[i]); 
    x[i] += velX[i];
    y[i] += velY[i];
  
    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]);
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);
    }
  }
}