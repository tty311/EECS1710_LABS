/*
This creature look like a bee when it is in the tree. It can pollinate the flowers (click the flowers) and let the flowers become fruits.
when it come down to the ground, it become something like hunman, but no one wants to get close to him because of his different appearance.
*/
import processing.sound.*;
SoundFile soundfile,soundfile1,sound;
PImage bg;
PImage tree;
PImage flower1, flower2,flower3,flower4,flower5,flower6,flower7;
PImage bee,man,man1,man2,beeman,mb1,mb2,man1c,man2c;
PImage peach,cloud;
PVector position1, target1,position2, target2;
boolean isRunning1 = false,isRunning2 = false;
float x,s;
int time=5000;


void setup(){
size(800, 600,P2D);
cloud = loadImage("cloud.png");

bg = loadImage("background.png");
imageMode(CENTER);

tree = loadImage("tree.png");
imageMode(CENTER);

flower1= loadImage("flower.png");
flower2= loadImage("flower.png");
flower3= loadImage("flower.png");
flower4= loadImage("flower.png");
flower5= loadImage("flower.png");
flower6= loadImage("flower.png");
flower7= loadImage("flower.png");

bee = loadImage("bee.png");
peach = loadImage("peach.png");
beeman= loadImage("beeman.png");

position1 = new PVector(random(width), random(410,570));
 target1 = new PVector(random(width), random(410,570));  
 position2 = new PVector(random(width), random(410,570));
 target2 = new PVector(random(width), random(410,570));  
  man1= loadImage("man1.png");
  man2= loadImage("man2.png");
  
  mb1= loadImage("mb1.png");
  mb2= loadImage("mb2.png");
 
 x=0;
 s=0.5;
 
soundfile = new SoundFile(this, "no.mp3");
soundfile1 = new SoundFile(this, "jianjiao.mp3");
sound = new SoundFile(this, "mifeng.mp3");

 

}

void draw(){
background(240,248,255);

image(cloud, x, 45, 130, 85);
x+=s;
if (x > width || x < 0) {
    s *= -1;  
}



image(bg, 400, 400, 800, 800);

image(tree, 400, 280, 400, 500);

image(flower1, 310, 240, 40, 40);

image(flower2, 325, 340, 37, 37);

image(flower3, 380, 140, 40, 40);

image(flower4, 410, 290, 38, 38);

image(flower5, 530, 180, 38, 38);

image(flower6, 490, 350, 38, 38);

image(flower7, 440, 200, 40, 40);

if (200< mouseX && mouseX< 570 && mouseY<410 && mouseY>50){
image(bee, mouseX, mouseY, 30, 30);
println("SFSampleRate= " + sound.sampleRate() + " Hz");
println("SFSamples= " + sound.frames() + " samples");
println("SFDuration= " + sound.duration() + " seconds");
sound.play();
}

if(mouseY>410 && mouseY<600){
  image(beeman, mouseX, mouseY, 45, 80);
  delay(60);
}

if(0< mouseX && mouseX< 200 && mouseY<410 && mouseY>280){
  image(beeman, mouseX, mouseY, 40, 70);
  delay(60);
}

if(580< mouseX && mouseX< 800 && mouseY<410 && mouseY>280){
  image(beeman, mouseX, mouseY, 40, 70);
  delay(60);
}

 PVector mousePos = new PVector(mouseX, mouseY);
  isRunning1 = position1.dist(mousePos) < 55;
  isRunning2 = position2.dist(mousePos) < 55;
  
  if (isRunning1) {
    time=millis();
    image(mb1,position1.x, position1.y, 48, 90); 
    position1 = position1.lerp(target1, 0.2);
    if (position1.dist(target1) < 65) {
 target1 = new PVector(random(0,500), random(410,570));  
println("SFSampleRate= " + soundfile.sampleRate() + " Hz");
println("SFSamples= " + soundfile.frames() + " samples");
println("SFDuration= " + soundfile.duration() + " seconds");
 soundfile.play();
    }
  }else{
  image(man1,position1.x, position1.y, 48, 90);
}
  
  if (isRunning2) {
    time=millis();
    image(mb2,position2.x, position2.y, 48, 90); 
    position2 = position2.lerp(target2, 0.2);
    if (position2.dist(target2) < 65) {
      target2 = new PVector(random(200,800), random(410,570));
      println("SFSampleRate= " + soundfile1.sampleRate() + " Hz");
println("SFSamples= " + soundfile1.frames() + " samples");
println("SFDuration= " + soundfile1.duration() + " seconds");

  soundfile1.play();
    }
  }else{
  image(man2,position2.x, position2.y, 48, 90);
}

}

void mouseClicked(){ 
  if( (mouseX > 290 && mouseX < 330) && (mouseY > 220 && mouseY < 260) ){
    flower1=peach;
    delay(200);
  }
  
  if( (mouseX > 305 && mouseX < 345) && (mouseY > 320 && mouseY < 360) ){
    flower2=peach;
    delay(200);
  }
  
  if( (mouseX > 360 && mouseX < 400) && (mouseY > 120 && mouseY < 160) ){
    flower3=peach;
    delay(200);
  }
  
  if( (mouseX > 390 && mouseX < 430) && (mouseY > 270 && mouseY < 310) ){
    flower4=peach;
    delay(200);
  }
  
  if( (mouseX > 510 && mouseX < 550) && (mouseY > 160 && mouseY < 210) ){
    flower5=peach;
    delay(200);
  }
  
  if( (mouseX > 470 && mouseX < 510) && (mouseY > 330 && mouseY < 370) ){
    flower6=peach;
    delay(200);
  }
  
  if( (mouseX > 420 && mouseX < 460) && (mouseY > 180 && mouseY < 220) ){
    flower7=peach;
    delay(200);
  }
  
}
