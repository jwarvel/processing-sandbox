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

    greenFront = 1;
    yellowFront = 1;
    redFront = 1;
}

// Main draw loop
void draw(){

  radius = radius + sin( frameCount / 4 );

  // Track circle to new destination
  X+=(nX-X)/delay;
  Y+=(nY-Y)/delay;


  greenX = sin(frameCount/12);
  if ( greenX > .95 ){
    greenFront = 0;
  }
  if ( greenX < -0.95 ){
    greenFront = 1;
  }

  yellowX = sin(frameCount/10);
  if ( yellowX > .95 ){
    yellowFront = 0;
  }
  if ( yellowX < -0.95 ){
    yellowFront = 1;
  }

  redX = sin(frameCount/20);
  if ( redX > .95 ){
      redFront = 0;
    }
  if ( redX < -0.95 ){
      redFront = 1;
  }

  // Fill canvas dark blue
  background( 10, 0, 40 );

  if (greenFront == 0) {
     // green circle
      fill( 0, 121, 84 );
      stroke(255 );
      ellipse( X+80*greenX, Y, radius/2, radius/2 );
  }

 if (yellowFront == 0) {
    // yellow circle
    fill( 190, 190, 0 );
    stroke(255 );
    ellipse( X+120*yellowX, Y, radius/3, radius/3 );
 }

 if (redFront == 0 ){
    // red circle
    fill( 220, 21, 24 );
    stroke(255 );
    ellipse( X+140*redX, Y, radius/10, radius/10 );
  }

  // blue circle
  fill( 0, 121, 184 );
  stroke(200,200,0);
  ellipse( X, Y, radius, radius );

  // make a little blinky white dot
  if ( sin( frameCount / 4 ) > 0 ) {
    fill( 220, 21, 24 );
    stroke(255 );
    ellipse( X+30, Y -30, 2, 2 );
  }


  if (greenFront == 1) {
     // Set fill-color to green
      fill( 0, 121, 84 );
      // Set stroke-color white
      stroke(255 );
      ellipse( X+80*greenX, Y, radius/2, radius/2 );
  }

 if (yellowFront == 1) {
    // yellow circle
    fill( 190, 190, 0 );
    stroke(255 );
    ellipse( X+120*yellowX, Y, radius/3, radius/3 );
 }

 if (redFront == 1 ){
    // red circle
    fill( 220, 21, 24 );
    stroke(255 );
    ellipse( X+140*redX, Y, radius/10, radius/10 );
  }


}


// Set circle's next destination
void mouseMoved(){
  nX = mouseX;
  nY = mouseY;
}

