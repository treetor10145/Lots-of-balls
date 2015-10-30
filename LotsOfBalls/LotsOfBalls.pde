//declare variables
float [] x = new float[2];
float [] y = new float[2];
float [] velX = new float[2];
float [] velY = new float[2];
float [] diam = new float[2];

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x[1] = width/2;
  y[1] = height/2;
  diam[1] = 80;
  velX[1] = random(-5, 5);
  velY[1] = random(-5, 5);

}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[1], y[1], diam[1], diam[1]);

  //add velocity to position
  x[1] += velX[1];
  y[1] += velY[1];

  //bounce ball if it hits walls
  if (x[1] + diam[1]/2 >= width) {
    velX[1] = -abs(velX[1]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[1] - diam[1]/2 <= 0) {
    velX[1] = abs(velX[1]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[1] + diam[1]/2 >= height) {
    velY[1] = -abs(velY[1]);
  } else if (y[1] - diam[1]/2 <= 0) {
    velY[1] = abs(velY[1]);
  }
}