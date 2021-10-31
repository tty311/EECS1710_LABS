class Butterfly2{


Butterfly2(){

  p2 = new PVector(39,40);
  v2= new PVector(-5,5);


}

void move(){
  
p2.add(v2);

}

void turn(){

  if((p2.x>width)||(p2.x<0)){
    v2.x = v2.x*-1;
  }
    if((p2.y>height)||(p2.y<0)){
    v2.y = v2.y*-1;
  }

  
  
}  

void display(){

image(gif2,p2.x,p2.y,120,120);
imageMode(CENTER);
 gif2.loop();
  gif2.play();
}

}
