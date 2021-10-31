int half = 40;
int half2 = 60;

void keyPressed() {
  if(key ==' '){
  guide =false;
  }
  if (key == ' ' && (mouseX < p.x+half )&&( mouseX > p.x-half)&& (mouseY > p.y-half2 )&&( mouseY < p.y+half2)) {
 showImage1 = false; 
 }
 if (key == ' '&& (mouseX < p2.x+half )&&( mouseX > p2.x-half)&& (mouseY > p2.y-half2 )&&( mouseY < p2.y+half2)) {
 showImage2 = false; 
 }

 if (key == ' '&& (mouseX < p3.x+half )&&( mouseX > p3.x-half)&& (mouseY > p3.y-half2 )&&( mouseY < p3.y+half2)) {
 showImage3 = false; 
 }
 if (key == ' '&& cw == true) {
 hp=hp-20;
 cw = false;
 }

 if  (showImage1 == false && showImage2 == false &&showImage3 == false){
  textwin = true;
  showImage4 = false; 
  show = false;   
}

if(hp<0){
gameover=true;
textwin = false;
showImage1 = false; 
showImage2 = false; 
showImage3 = false; 
showImage4 = false; 
}

if(textwin == true && gameover ==true){
  
textSize(128);
text("end", 500, 400); 
fill(0, 408, 612);
}
}



 
