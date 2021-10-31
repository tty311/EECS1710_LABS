class Wasp{
PVector pos,vel;

Wasp(float x, float y){

  pos = new PVector(x,y);
  vel = new PVector(random(-5, 10), random(-10, 5));
}

void move(){
  
  pos.add(vel);

}

void turn(){

  if((pos.x>width)||(pos.x<0)){
    vel.x = vel.x*-1;
  } 
  
  if((pos.y>height)||(pos.y<0)){
     vel.y = vel.y*-1;
  }
  
  if ((mouseX < pos.x+30 )&&( mouseX > pos.x-30)&& (mouseY > pos.y-30 )&&( mouseY < pos.y+30)) {
 cw =true; 
 }
}  

void display(){

image(gif4, pos.x,pos.y,140,140);
 imageMode(CENTER);
 gif4.loop();
  gif4.play();
}

}
