// Global variables
float radius = 50.0;
int X, Y;
int nX, nY;
int delay = 16;

// Setup the Processing Canvas
void setup(){
  size( 1200, 800 );
  strokeWeight( 1 );
  frameRate( 15 );
  X = width / 2;
  Y = height / 2;
  nX = X;
  nY = Y;


  // Fill canvas dark blue
  background( 10, 0, 40 );

    stroke(255 );
    ellipse( X, Y, 2, 2 );
}

// Main draw loop
void draw(){

  radius = radius + sin( frameCount / 4 );

  // Track circle to new destination
  X+=(nX-X)/delay;
  Y+=(nY-Y)/delay;

  // Fill canvas dark blue
  //background( 10, 0, 40 );

  // outline in dark blue
  stroke(10,0,40);

  // Set fill-color to blue
  fill( 0, 80, 160 );
  // Set stroke-color white

  // Draw circle
  ellipse( X, Y, radius, radius );

  // Set fill-color to green
  fill( 0, 121, 84 );
  // Set stroke-color white
  ellipse( X+80*sin(frameCount/12), Y, radius/2, radius/2 );

  // Set fill-color to yellow
  fill( 220, 190, 0 );
  // Set stroke-color white
  ellipse( X+120*sin(frameCount/10), Y, radius/3, radius/3 );

  // Set fill-color to red
  fill( 220, 21, 24 );
  // Set stroke-color white
  ellipse( X+140*sin(frameCount/20), Y, radius/10, radius/10 );




}


// Set circle's next destination
void mouseMoved(){
  nX = mouseX;
  nY = mouseY;
}

