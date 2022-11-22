int[] Move ={0, 331,};
int red = 255;
void setup(){
  size(400,400);

}
void draw(){
  if(Move[1] == 0){
    fill(0,0,0);
 rect(0,0,400,400);
 fill(255,0,0);
 rect(Move[1],160,70,70);
 Move[0] = 0;
 Move[1] = 330;
  }else if(Move[1]<330){
  fill(0,0,0);
 rect(0,0,400,400);
 fill(255,255,255);
 rect(Move[1],160,70,70);
 Move[1] -= 1;
  }else if(Move[0] == 330){
    fill(0,0,0);
 rect(0,0,400,400);
 fill(255,0,0);
 rect(Move[0],160,70,70);
 Move[1] = 329;
 }else if(Move[0] <330){
 fill(0,0,0);
 rect(0,0,400,400);
 fill(255,255,255);
 rect(Move[0],160,70,70);
 Move[0] += 1; 
 }else if(Move[1] == 0){
    fill(0,0,0);
 rect(0,0,400,400);
 fill(255,0,0);
 rect(Move[1],160,70,70);
 Move[0] = 0;
}
}
