class Butterfly1{

Butterfly1(){

  p = new PVector(width/2,height/2);
  v= new PVector(5,-3);


}

void move(){
  
p.add(v);

}

void turn(){

  if((p.x>width)||(p.x<0)){
    v.x = v.x*-1;
  }
    if((p.y>height)||(p.y<0)){
    v.y = v.y*-1;
  }

  
  
}  

void display(){

image(gif1,p.x,p.y,120,120);
imageMode(CENTER);
 gif1.loop();
  gif1.play();
}

}
