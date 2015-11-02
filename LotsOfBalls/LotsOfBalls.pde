//declare variables
float [] x = new float[255];
float [] y = new float[255];
float [] velX = new float[255];
float [] velY = new float[255];
float [] diam = new float[255];

void setup() {
  int i = 0;
  //set size of canvas
  size(800, 600);
  //initialize variables
  while (i < 255){
    x[i] = random(width);
    y[i] = random(height);
    diam[i] = 80;
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);  
    i = i + 1;
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);
  int i = 0;
  while (i < 255){
  //draw ball
    fill(i,i,i);
    ellipse(x[i], y[i], diam[i], diam[i]); 
    //add velocity to position
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
    i = i + 1;
  }
}