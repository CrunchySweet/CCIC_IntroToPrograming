int value = 0;
int p1;
int p2;
int[][] board = {
{0,0,0,0,0,0,0},
{0,0,0,0,0,0,0},
{0,0,0,0,0,0,0},
{0,0,0,0,0,0,0},
{0,0,0,0,0,0,0},
{0,0,0,0,0,0,0}
};
void draw(){
  
}
// resets the whole board to 0 to start a new game
void clearboard(){
 for(int i = 0; i < 6; i++){
   for(int x = 0; x < 7; x++){
     board[i][x]=0;
}
 }
}
// what color the player picks
void keyTyped(){
 if(key == 'l'){
   p1 = 1;
   p2 = 2;
   clearboard();
   drawgame();
 }else if(key == 'g'){
  p1 = 2;
  p2 = 1;
  drawgame();
  clearboard();
 }
}
void setup(){
  size(1260,1260);
 pick(); 
}
void turn(){
 if(value == 0){
  value = 1; 
 }else{
   value = 0;
 }
}
void pick(){
  noStroke();
  fill(218,160,222);
 rect(0,0,650,1260);
 noStroke();
 fill(110,255,134);
 rect(650,0,650,1260);
 textSize(45);
 fill(0);
  text("Pick Lavender or Light green",355,40);
  text("By hitting L or G on the keyborad",325,120);
}
void drawgame(){
  background(0,0,255);
  //row1
  fill(255,255,255);
  circle(100, 100, 150);
  circle(275, 100, 150);
  circle(450, 100, 150);
  circle(625, 100, 150);
  circle(800, 100, 150);
  circle(975, 100, 150);
  circle(1150, 100, 150);
  //row2
  circle(100, 270, 150);
  circle(275, 270, 150);
  circle(450, 270, 150);
  circle(625, 270, 150);
  circle(800, 270, 150);
  circle(975, 270, 150);
  circle(1150,270, 150);
  //row3
  circle(100, 440, 150);
  circle(275, 440, 150);
  circle(450, 440, 150);
  circle(625, 440, 150);
  circle(800, 440, 150);
  circle(975, 440, 150);
  circle(1150,440, 150);
  //row4
  circle(100, 610, 150);
  circle(275, 610, 150);
  circle(450, 610, 150);
  circle(625, 610, 150);
  circle(800, 610, 150);
  circle(975, 610, 150);
  circle(1150,610, 150);
  //row5
  circle(100, 780, 150);
  circle(275, 780, 150);
  circle(450, 780, 150);
  circle(625, 780, 150);
  circle(800, 780, 150);
  circle(975, 780, 150);
  circle(1150,780, 150);
  //row6
  circle(100, 950, 150);
  circle(275, 950, 150);
  circle(450, 950, 150);
  circle(625, 950, 150);
  circle(800, 950, 150);
  circle(975, 950, 150);
  circle(1150,950, 150);
}
void mouseClicked(){
  if(mouseX >= 0 && mouseX<=275 && p1 == 1&& value == 0){
    if(board[0][5] == 0){
      fill(218, 160, 222);
      circle(100, 950, 150);
      board[0][5] = 1;
    turn();
  }else if(board[0][4] == 0){
   fill(218,160,222);
   circle(100,780,150);
   board[0][4] = 1;
   turn();
  }else if(board[0][3] == 0){
   fill(218,160,222);
   circle(100,780,150);
   board[0][3] = 1;
   turn();
  }
}
}
