class Butterfly3{


Butterfly3(){

  p3 = new PVector(9,6);
  v3= new PVector(2.5,-2);


}

void move(){
  
p3.add(v3);

}

void turn(){

  if((p3.x>width)||(p3.x<0)){
    v3.x = v3.x*-1;
  }
    if((p3.y>height)||(p3.y<0)){
    v3.y = v3.y*-1;
  }

  
  
}  

void display(){

image(gif3,p3.x,p3.y,140,140);
imageMode(CENTER);
 gif3.loop();
  gif3.play();
}

}
