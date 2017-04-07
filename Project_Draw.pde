int s = 10;
int r = 0;
int g = 0;
int b = 0;
//above are variables for size and each RGB value.
int r1 = 0;
int g1 = 0;
int b1 = 0;
int r2 = 0;
int g2 = 0;
int b2 = 0;
//above are color storage variables.
void setup() {
size(750,750);
strokeWeight(1);
background(227, 234, 244);
frameRate(6000);
smooth();
noStroke();
}
void draw() {
  //COLOR INDICATORS
  rect(10,10,15,15);
  fill(r,0,0);
  rect(35, 10, 10, 10);
  fill(0,g,0);
  rect(55,10,10,10);
  fill(0,0,b);
  rect(75,10,10,10);
  //SIZE INDICATORS
  fill(227, 234, 244);
  ellipse(740,10,s/1.9,s/1.9);
  fill(0,0,0);
  ellipse(740,10,s/2,s/2);
  fill(227, 234, 244);
  ellipse(740,10,s/2.1,s/2.1);
  fill(r,g,b);
  // KEYBOARD COMMANDS
  if (keyPressed == true) {
    if(key == 'w'){
    fill(random(200), random(200), random(200));
 //   stroke(random(200), random(200, random(200)));
    //this is for random colors
    }
    if(key == 'a'){
    s = s-1;
    }
    if(key == 'd') {
    s = s+1;
    }
    if(key == 's'){
      s = 10;
      //resets size
    }
    if(key == 'q'){
      fill(227, 234, 244);
      //no pointer, so you don't have to erase to not draw.
    }
    if(key == '2'){
    r=r-2;
    r = r;
    //decrease red
    }
    if(key == '3'){
      g = g+2;
      g = g;
      //increase green
    }
    if(key == '4'){
      g=g-2;
      g =g;
      //decrease green
    }
    if(key == '5'){
      b = b+2;
      b = b;
      //blue up
    }
    if(key == '6'){
      b = b-2;
      b = b;
      //blue down
    }
    if(key == '1'){
      r = r+2;
      r = r;
    }
    if(key == 'z'){
      background(227, 234, 244);
      //RESET BUTTON
    }
    //SAVE COLORS WITH 7&9, LOAD WITH 8&0, RESPECTIVELY.
    if(key=='7'){
      r1=r;
      g1=g;
      b1=b;
    }
    if(key=='8'){
     r=r1;
     g=g1;
     b=b1;
    }
    if(key=='9'){
     r2=r;
     g2=g;
     b2=b;
    }
    if(key=='0'){
     r=r2;
     g=g2;
     b=b2;
    }
  }
  //below are the color bounds. This stops a glitch where color values... 
  //...are too high or too low to ever change again.
  if(r>255){
    r=255;
  }
  if(r<0){
    r=0;
  }
  if(g>255){
    g = 255;
  }
  if(g<0){
    g=0;
  }
  if(b>255){
    b = 255;
  }
  if(b<0){
    b = 0;
  }
  //END COLOR BORDERS
  if(mousePressed){
  ellipse(mouseX,mouseY,s,s);
  }
   if(mousePressed){
  ellipse(mouseX,mouseY,s,s);
  }
}