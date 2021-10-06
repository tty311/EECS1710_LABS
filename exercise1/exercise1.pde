float x = 0;

void setup() {
  size(800, 600);
  ellipseMode(CENTER);
  rectMode(CORNER);
}

void draw() {
  background(121, 205, 205);
  stroke(135, 206, 250);
  strokeWeight(15);
  fill(70, 130, 180);
  float a= random(200);
  ellipse(400, 300, a, a);
  
  stroke(255, 245, 238);
  strokeWeight(20);
  fill(255, 192, 203);
  float b= random(300);
  ellipse(400, 300, b, b);
  
  stroke(137, 104, 205);
  strokeWeight(10);
  fill(230, 230, 250);
  float y= random(100);
  ellipse(400, 300, y,y );
 
  
  stroke(144, 238, 144);
  strokeWeight(10);
  fill(255, 250, 205);
  float c= random(150);
  float f= random(30);
  rect(x++, 0, c, c,f);
 
  stroke(139, 90, 43);
  strokeWeight(10);
  fill(255, 165, 79);
  float d= random(800);
  float e= random(20);
  rect(d, 500, 40, 40,e);
  delay(25);
  
  if (mousePressed) {
    fill(28, 28, 28);
    stroke(232, 232, 232);
    strokeWeight(3);
    rect(mouseX, mouseY, 15, 15);
}
}
