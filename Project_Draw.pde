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
  //POINTER
  fill(r,g,b);
  if(mousePressed){
 // ellipse(mouseX,mouseY,s,s);
 stroke(r,g,b);
 strokeWeight(s);
 line(mouseX,mouseY,pmouseX,pmouseY);
  }
  //COLOR INDICATORS
  noStroke();
  rect(10,10,15,15);
  fill(r,0,0);
  rect(35, 10, 10, 10);
  if(35<mouseX&&mouseX<45 && 10<mouseY&&mouseY<20 && mousePressed){
    r=r+1;
  }
  fill(0,g,0);
  rect(55,10,10,10);
  if(55<mouseX&&mouseX<65 && 10<mouseY&&mouseY<20 && mousePressed){
    g=g+1;
  }
  fill(0,0,b);
  rect(75,10,10,10);
  if(75<mouseX&&mouseX<85 && 10<mouseY&&mouseY<20 && mousePressed){
    b=b+1;
  }
  //SIZE INDICATORS
  fill(227, 234, 244);
  ellipse(740,10,s/1.9,s/1.9);
  fill(50,50,50);
  ellipse(740,10,s/2,s/2);
  fill(227, 234, 244);
  ellipse(740,10,s/2.1,s/2.1);
  fill(r,g,b);
  // KEYBOARD COMMANDS
  if (keyPressed == true) {
    if(key == 'a'){
    s = s-1;
      if(s>285){
    if(s<-285){
    s=285;
    }
  }
    }
    if(key == 'd') {
    s = s+1;
      if(s>285){
    if(s<-285){
    s=285;
    }
  }
    }
    if(key == 's'){
      s = 10;
      //resets size
    }
    if(key == 'q'){
      r=227; 
      g=234; 
      b=244;
      //no pointer, so you don't have to erase to not draw.
    }
    if(key == 'e'){
      r=0;
      g=0;
      b=0;
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
    //Time for clickables!
  //Size Clickables
  fill(50,50,50);
  triangle(630,30, 650,10, 670,30);
  if(630<mouseX&&mouseX<670 && 10<mouseY&&mouseY<30&&mousePressed){
  s=s+1;  
}
  triangle(630,35, 650,55, 670,35);
  if(630<mouseX&&mouseX<670 && 35<mouseY&mouseY<55 && mousePressed){
    s=s-1;
  }
  //size reset
  rect(590,10,30,45);
  if(590<mouseX&&mouseX<620 && 10<mouseY&mouseY<55 && mousePressed){
    s=10;
  }
  if(s>285){
    s=285;
  }
  if(s<1){
    s=1;
  }
  fill(200,0,0);
  rect(550,10,30,45);
  if(550<mouseX&&mouseX<580 && 10<mouseY&mouseY<55 && mousePressed){
        background(227, 234, 244);
  }
  fill(r/1.5,0,0);
  rect(35, 25, 10, 10);
  if(35<mouseX&&mouseX<45 && 25<mouseY&&mouseY<35 && mousePressed){
    r=r-1;
  }
  fill(0,g/1.5,0);
  rect(55,25,10,10);
  if(55<mouseX&&mouseX<65 && 25<mouseY&&mouseY<35 && mousePressed){
   g=g-1; 
  }
  fill(0,0,b/1.5);
  rect(75,25,10,10);
  if(75<mouseX&&mouseX<85 && 25<mouseY&&mouseY<35 && mousePressed){
    b=b-1;
  }
  fill(200,200,200);
  rect(105,10,20,25);
  if(105<mouseX&&mouseX<125 && 10<mouseY&&mouseY<30 && mousePressed){
      r=227; 
      g=234; 
      b=244;
  }
  fill(0,0,0);
  rect(135,10,20,25);
  if(135<mouseX&&mouseX<155 && 10<mouseY&&mouseY<30 && mousePressed){
      r=0; 
      g=0; 
      b=0;
  }
  fill(75,75,75);
  rect(165,10,20,25);
  if(165<mouseX&&mouseX<175 && 10<mouseY&&mouseY<30 && mousePressed){
      r1=r;
      g1=g;
      b1=b;
  }
  fill(r1,g1,b1);
  rect(195,10,20,25);
  if(195<mouseX&&mouseX<215 && 10<mouseY&&mouseY<30 && mousePressed){
  r=r1;
  g=g1;
  b=b1;
  }
  fill(50,50,50);
  rect(225,10,20,25);
  if(225<mouseX&&mouseX<245 && 10<mouseY&&mouseY<30 && mousePressed){
      r2=r;
      g2=g;
      b2=b;
  }
  fill(r2,g2,b2);
  rect(255,10,20,25);
  if(255<mouseX&&mouseX<275 && 10<mouseY&&mouseY<30 && mousePressed){
  r=r2;
  g=g2;
  b=b2;
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
  
}