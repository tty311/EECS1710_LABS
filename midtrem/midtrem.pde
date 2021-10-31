import gifAnimation.*;
Gif gif1;
Butterfly1 b1;

Gif gif2;
Butterfly2 b2;

Gif gif3;
Butterfly3 b3;

Gif gif4;
Wasp[] w =  new Wasp[5];

PImage bn1,background;
boolean showImage1 = true; 
boolean showImage2 = true; 
boolean showImage3 = true; 
boolean showImage4 = true; 
boolean textwin = false;
boolean gameover = false;
boolean show = true;
boolean cw = false;
boolean guide = true;
PVector p,v,p2,v2,p3,v3;
int hp=50;

void setup(){
size(1000,800,P3D);

background=loadImage("background.jpeg");

b1= new Butterfly1();
gif1 = new Gif(this, "Butterfly1.gif");

b2= new Butterfly2();
gif2 = new Gif(this, "Butterfly2.gif");

b3= new Butterfly3();
gif3 = new Gif(this, "Butterfly3.gif");

gif4 = new Gif(this, "Wasp.gif");

for (int i=0; i<5; i++) {
    w[i] = new Wasp(random(width), random(height));
  }

bn1 =loadImage("bn1.png");

}

void draw(){
background(255);

image(background,500,400,width,height);

textSize(50);
fill(255, 165, 79);
text("HP", 770, 100); 
text(hp, 870, 100); 

if(guide){
textSize(20);
fill(255, 255,255);
text("Catch the butterflies and avoid the Wasps.", 20, 30); 
text("Mouse to move. Space key to catch.", 20, 50); 

}


if(showImage1){ 
b1.move();
b1.turn();
b1.display();
}

if(showImage2){ 
b2.move();
b2.turn();
b2.display();
}

if(showImage3){ 
b3.move();
b3.turn();
b3.display();
}

if(showImage4){ 
for (int i=0; i<w.length; i++) {
w[i].move();
w[i].turn();
w[i].display();
}
}
if(show){  
image(bn1,mouseX,mouseY,70,130);

}

if(textwin){ 
textSize(128);
fill(0, 245, 255);
text("WIN!!", 300, 400); 

}

if(gameover){ 
textSize(110);
fill(255,250,250);
text("GAME OVER", 200, 400); 
}
}



  
