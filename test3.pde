// Global variables
float radius = 50.0;
int X, Y;
int nX, nY;
int delay = 16;

// Setup the Processing Canvas
void setup(){
  size( 1000, 800 );
  strokeWeight( 1 );
  frameRate( 15 );
  X = 500;
  Y = 50;
 
}

// Main draw loop
void draw(){



   // Fill canvas dark blue
  background( 10, 0, 40 );


  for (i = 1; i < 25; i++ ){
  
  	x = sin( frameCount / (100/i) );
  	y = Y + 20*i;
  
    // bue-green circle
    fill( 30, 190, 190 );
    //stroke(255 );
    ellipse( X+100*x, Y+20*i, 15, 15 );
   
  }





}



