PImage background,car,cloud,tree1,tree2,tree3,tree4;
float x1,x2,x3,x4,y1,y2;
float xo,xa,yo,ya;
float so,sa;
void setup(){
 size(1000,600);
 noTint();
 background= loadImage("background.jpeg");
 //noTint();
 //tint(225,200);
 cloud= loadImage("cloud.PNG");
 tree1= loadImage("tree.PNG"); 
 tree2= loadImage("tree.PNG"); 
 tree3= loadImage("tree.PNG"); 
 tree4= loadImage("tree.PNG"); 
 car= loadImage("car.PNG");
 
  x1=80; 
  y1=348;
  x2=x1+210;
  y2=y1-180;
  x3=x2+210;
  x4=x3+210;
  
  xa=10;
  ya=420;
  xo=0;
  yo=40;
  
  so=6;
  sa=so*2;
  
}

void draw(){
   noTint();
image(background,0,0,background.width, height);

tint(225,190);
image(cloud,xo,yo,150, 80);
xo+=so;

if (xo > width || xo < 0) {
    so *= -1;  
}

noTint();
image(car,xa,ya,200, 110);

xa+=sa;

if (xa > width || xa < 0) {
    sa *= -1;  
}
image(tree1,x1,y1,100,250);
 noTint();
image(tree2,x2,y2,100,250);
 noTint();
image(tree3,x3,y1,100,250);
 noTint();
image(tree4,x4,y2,100,250);

}
