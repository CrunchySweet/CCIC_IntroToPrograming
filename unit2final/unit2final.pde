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
// here because why not?
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
// what color the player picks and to start a new game
void keyTyped(){
 if(key == 'l'){
   p1 = 1;
   p2 = 2;
   value = 0;
   clearboard();
   drawgame();
 }else if(key == 'g'){
  p1 = 2;
  p2 = 1;
  value = 0;
  drawgame();
  clearboard();
 }
}
// makes the size and starts the whole game
void setup(){
  size(1260,1260);
 pick(); 
}
// changes from player one's turn to player two's turn and back.
void turn(){
 if(value == 0){
  value = 1; 
 }else{
   value = 0;
 }
}
//the screen that lets player 1 pick what color they wanna be
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
// draws the gameboard
void drawgame(){
  background(0,0,255);
  //row1
  fill(0,0,0);
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
//lets place pieces but not in one thats already taken
void mouseClicked(){
  //This is for the first column 
  if(mouseX >= 0 && mouseX<=200 && p1 == 1&& value == 0){
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
   circle(100,610,150);
   board[0][3] = 1;
   turn();
  }else if(board[0][2] == 0){
   fill(218,160,222);
   circle(100,440,150);
   board[0][2] = 1;
   turn();
  }else if(board[0][1] == 0){
   fill(218,160,222);
   circle(100,270,150);
   board[0][1] = 1;
   turn();
  }else if(board[0][0] == 0){
   fill(218,160,222);
   circle(100,100,150);
   board[0][0] = 1;
   turn();
  }
}else if(mouseX >= 0 && mouseX<=200 && p2 == 2&& value == 1){
    if(board[0][5] == 0){
       fill(110,255,134);
    circle(100, 950, 150);
    board[0][5] = 2;
    turn();
  }else if(board[0][4] == 0){
   fill(110,255,134);
   circle(100,780,150);
   board[0][4] = 2;
   turn();
  }else if(board[0][3] == 0){
   fill(110,255,134);
   circle(100,610,150);
   board[0][3] = 2;
   turn();
  }else if(board[0][2] == 0){
   fill(110,255,134);
   circle(100,440,150);
   board[0][2] = 2;
   turn();
  }else if(board[0][1] == 0){
   fill(110,255,134);
   circle(100,270,150);
   board[0][1] = 2;
   turn();
  }else if(board[0][0]== 0){
   fill(110,255,134);
   circle(100,100,150);
   board[0][0] = 2;
   turn();
  }
}else if(mouseX >= 0 && mouseX<=200 && p1 == 2&& value == 0){
    if(board[0][5] == 0){
       fill(110,255,134);
    circle(100, 950, 150);
    board[0][5] = 2;
    turn();
  }else if(board[0][4] == 0){
   fill(110,255,134);
   circle(100,780,150);
   board[0][4] = 2;
   turn();
  }else if(board[0][3] == 0){
   fill(110,255,134);
   circle(100,610,150);
   board[0][3] = 2;
   turn();
  }else if(board[0][2] == 0){
   fill(110,255,134);
   circle(100,440,150);
   board[0][2] = 2;
   turn();
  }else if(board[0][1] == 0){
   fill(110,255,134);
   circle(100,270,150);
   board[0][1] = 2;
   turn();
  }else if(board[0][0] == 0){
   fill(110,255,134);
   circle(100,100,150);
   board[0][0] = 2;
   turn();
  }
}else if(mouseX >= 0 && mouseX<=200 && p2 == 1&& value == 1){
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
   circle(100,610,150);
   board[0][3] = 1;
   turn();
  }else if(board[0][2] == 0){
   fill(218,160,222);
   circle(100,440,150);
   board[0][2] = 1;
   turn();
  }else if(board[0][1] == 0){
   fill(218,160,222);
   circle(100,270,150);
   board[0][1] = 1;
   turn();
  }else if(board[0][0] == 0){
   fill(218,160,222);
   circle(100,100,150);
   board[0][0] = 1;
   turn();
  }
  // this is for the second column
}else if(mouseX <= 350 && mouseX>=200 && p1 == 1&& value == 0){
    if(board[1][5] == 0){
      fill(218, 160, 222);
      circle(275, 950, 150);
      board[1][5] = 1;
    turn();
  }else if(board[1][4] == 0){
   fill(218,160,222);
   circle(275,780,150);
   board[1][4] = 1;
   turn();
  }else if(board[1][3] == 0){
   fill(218,160,222);
   circle(275,610,150);
   board[1][3] = 1;
   turn();
  }else if(board[1][2] == 0){
   fill(218,160,222);
   circle(275,440,150);
   board[1][2] = 1;
   turn();
  }else if(board[1][1] == 0){
   fill(218,160,222);
   circle(275,270,150);
   board[1][1] = 1;
   turn();
  }else if(board[1][0] == 0){
   fill(218,160,222);
   circle(275,100,150);
   board[1][0] = 1;
   turn();
  }
}else if(mouseX <= 350&& mouseX>=200 && p1 == 2&& value == 0){
    if(board[1][5] == 0){
      fill(110,255,134);
      circle(275, 950, 150);
      board[1][5] = 2;
    turn();
  }else if(board[1][4] == 0){
   fill(110,255,134);
   circle(275,780,150);
   board[1][4] = 2;
   turn();
  }else if(board[1][3] == 0){
   fill(110,255,134);
   circle(275,610,150);
   board[1][3] = 2;
   turn();
  }else if(board[1][2] == 0){
   fill(110,255,134);
   circle(275,440,150);
   board[1][2] = 2;
   turn();
  }else if(board[1][1] == 0){
   fill(110,255,134);
   circle(275,270,150);
   board[1][1] = 2;
   turn();
  }else if(board[1][0] == 0){
   fill(110,255,134);
   circle(275,100,150);
   board[1][0] = 2;
   turn();
  }
}else if(mouseX <= 350 && mouseX>=200 && p2 == 2&& value == 1){
    if(board[1][5] == 0){
      fill(110,255,134);
      circle(275, 950, 150);
      board[1][5] = 2;
    turn();
  }else if(board[1][4] == 0){
   fill(110,255,134);
   circle(275,780,150);
   board[1][4] = 2;
   turn();
  }else if(board[1][3] == 0){
   fill(110,255,134);
   circle(275,610,150);
   board[1][3] = 2;
   turn();
  }else if(board[1][2] == 0){
   fill(110,255,134);
   circle(275,440,150);
   board[1][2] = 2;
   turn();
  }else if(board[1][1] == 0){
   fill(110,255,134);
   circle(275,270,150);
   board[1][1] = 2;
   turn();
  }else if(board[1][0] == 0){
   fill(110,255,134);
   circle(275,100,150);
   board[1][0] = 2;
   turn();
  }
}else if(mouseX <= 350 && mouseX>=200 && p2 == 1&& value == 1){
    if(board[1][5] == 0){
      fill(218, 160, 222);
      circle(275, 950, 150);
      board[1][5] = 1;
    turn();
  }else if(board[1][4] == 0){
   fill(218,160,222);
   circle(275,780,150);
   board[1][4] = 1;
   turn();
  }else if(board[1][3] == 0){
   fill(275,160,222);
   circle(275,610,150);
   board[1][3] = 1;
   turn();
  }else if(board[1][2] == 0){
   fill(218,160,222);
   circle(275,440,150);
   board[1][2] = 1;
   turn();
  }else if(board[1][1] == 0){
   fill(218,160,222);
   circle(275,270,150);
   board[1][1] = 1;
   turn();
  }else if(board[1][0] == 0){
   fill(218,160,222);
   circle(275,100,150);
   board[1][0] = 1;
   turn();
  }
  // this is for the third column
}else if(mouseX >= 351 && mouseX<=500 && p2 == 1&& value == 1){
    if(board[2][5] == 0){
      fill(218, 160, 222);
      circle(450, 950, 150);
      board[2][5] = 1;
    turn();
  }else if(board[2][4] == 0){
   fill(218,160,222);
   circle(450,780,150);
   board[2][4] = 1;
   turn();
  }else if(board[2][3] == 0){
   fill(218,160,222);
   circle(450,610,150);
   board[2][3] = 1;
   turn();
  }else if(board[2][2] == 0){
   fill(218,160,222);
   circle(450,440,150);
   board[2][2] = 1;
   turn();
  }else if(board[2][1] == 0){
   fill(218,160,222);
   circle(450,270,150);
   board[2][1] = 1;
   turn();
  }else if(board[2][0] == 0){
   fill(218,160,222);
   circle(450,100,150);
   board[2][0] = 1;
   turn();
  }
}else if(mouseX >= 351 && mouseX<=500 && p1 == 1&& value == 0){
    if(board[2][5] == 0){
      fill(218, 160, 222);
      circle(450, 950, 150);
      board[2][5] = 1;
    turn();
  }else if(board[2][4] == 0){
   fill(218,160,222);
   circle(450,780,150);
   board[2][4] = 1;
   turn();
  }else if(board[2][3] == 0){
   fill(218,160,222);
   circle(450,610,150);
   board[2][3] = 1;
   turn();
  }else if(board[2][2] == 0){
   fill(218,160,222);
   circle(450,440,150);
   board[2][2] = 1;
   turn();
  }else if(board[2][1] == 0){
   fill(218,160,222);
   circle(450,270,150);
   board[2][1] = 1;
   turn();
  }else if(board[2][0] == 0){
   fill(218,160,222);
   circle(450,100,150);
   board[2][0] = 1;
   turn();
  }
}else if(mouseX >= 351 && mouseX<=500 && p2 == 2&& value == 1){
    if(board[2][5] == 0){
       fill(110,255,134);
      circle(450, 950, 150);
      board[2][5] = 2;
    turn();
  }else if(board[2][4] == 0){
    fill(110,255,134);
   circle(450,780,150);
   board[2][4] = 2;
   turn();
  }else if(board[2][3] == 0){
    fill(110,255,134);
   circle(450,610,150);
   board[2][3] = 2;
   turn();
  }else if(board[2][2] == 0){
    fill(110,255,134);
   circle(450,440,150);
   board[2][2] = 2;
   turn();
  }else if(board[2][1] == 0){
    fill(110,255,134);
   circle(450,270,150);
   board[2][1] = 2;
   turn();
  }else if(board[2][0] == 0){
    fill(110,255,134);
   circle(450,100,150);
   board[2][0] = 2;
   turn();
  }
}else if(mouseX >= 351 && mouseX<=500 && p1 == 2&& value == 0){
    if(board[2][5] == 0){
       fill(110,255,134);
      circle(450, 950, 150);
      board[2][5] = 2;
    turn();
  }else if(board[2][4] == 0){
    fill(110,255,134);
   circle(450,780,150);
   board[2][4] = 2;
   turn();
  }else if(board[2][3] == 0){
    fill(110,255,134);
   circle(450,610,150);
   board[2][3] = 2;
   turn();
  }else if(board[2][2] == 0){
    fill(110,255,134);
   circle(450,440,150);
   board[2][2] = 2;
   turn();
  }else if(board[2][1] == 0){
    fill(110,255,134);
   circle(450,270,150);
   board[2][1] = 2;
   turn();
  }else if(board[2][0] == 0){
    fill(110,255,134);
   circle(450,100,150);
   board[2][0] = 2;
   turn();
  }
}else if(mouseX >= 501 && mouseX<=675 && p2 == 2&& value == 1){
    if(board[3][5] == 0){
       fill(110,255,134);
      circle(625, 950, 150);
      board[3][5] = 2;
    turn();
  }else if(board[3][4] == 0){
    fill(110,255,134);
   circle(625,780,150);
   board[3][4] = 2;
   turn();
  }else if(board[3][3] == 0){
    fill(110,255,134);
   circle(625,610,150);
   board[3][3] = 2;
   turn();
  }else if(board[3][2] == 0){
    fill(110,255,134);
   circle(625,440,150);
   board[3][2] = 2;
   turn();
  }else if(board[3][1] == 0){
    fill(110,255,134);
   circle(625,270,150);
   board[3][1] = 2;
   turn();
  }else if(board[3][0] == 0){
    fill(110,255,134);
   circle(625,100,150);
   board[3][0] = 2;
   turn();
  }
}else if(mouseX >= 501 && mouseX<=675 && p1 == 2&& value == 0){
    if(board[3][5] == 0){
       fill(110,255,134);
      circle(625, 950, 150);
      board[3][5] = 2;
    turn();
  }else if(board[3][4] == 0){
    fill(110,255,134);
   circle(625,780,150);
   board[3][4] = 2;
   turn();
  }else if(board[3][3] == 0){
    fill(110,255,134);
   circle(625,610,150);
   board[3][3] = 2;
   turn();
  }else if(board[3][2] == 0){
    fill(110,255,134);
   circle(625,440,150);
   board[3][2] = 2;
   turn();
  }else if(board[3][1] == 0){
    fill(110,255,134);
   circle(625,270,150);
   board[3][1] = 2;
   turn();
  }else if(board[3][0] == 0){
    fill(110,255,134);
   circle(625,100,150);
   board[3][0] = 2;
   turn();
  }
}else if(mouseX >= 501 && mouseX<=675 && p1 == 1&& value == 0){
    if(board[3][5] == 0){
       fill(218,160,222);
      circle(625, 950, 150);
      board[3][5] = 1;
    turn();
  }else if(board[3][4] == 0){
    fill(218,160,222);
   circle(625,780,150);
   board[3][4] = 1;
   turn();
  }else if(board[3][3] == 0){
    fill(218,160,222);
   circle(625,610,150);
   board[3][3] = 1;
   turn();
  }else if(board[3][2] == 0){
   fill(218,160,222);
   circle(625,440,150);
   board[3][2] = 1;
   turn();
  }else if(board[3][1] == 0){
    fill(218,160,222);
   circle(625,270,150);
   board[3][1] = 1;
   turn();
  }else if(board[3][0] == 0){
    fill(218,160,222);
   circle(625,100,150);
   board[3][0] = 1;
   turn();
  }
}else if(mouseX >= 501 && mouseX<=675 && p2 == 1&& value == 1){
    if(board[3][5] == 0){
       fill(218,160,222);
      circle(625, 950, 150);
      board[3][5] = 1;
    turn();
  }else if(board[3][4] == 0){
    fill(218,160,222);
   circle(625,780,150);
   board[3][4] = 1;
   turn();
  }else if(board[3][3] == 0){
    fill(218,160,222);
   circle(625,610,150);
   board[3][3] = 1;
   turn();
  }else if(board[3][2] == 0){
   fill(218,160,222);
   circle(625,440,150);
   board[3][2] = 1;
   turn();
  }else if(board[3][1] == 0){
    fill(218,160,222);
   circle(625,270,150);
   board[3][1] = 1;
   turn();
  }else if(board[3][0] == 0){
    fill(218,160,222);
   circle(625,100,150);
   board[3][0] = 1;
   turn();
  }
}else if(mouseX <= 825 && mouseX>=676 && p1 == 1&& value == 0){
    if(board[4][5] == 0){
       fill(218,160,222);
      circle(800, 950, 150);
      board[4][5] = 1;
    turn();
  }else if(board[4][4] == 0){
    fill(218,160,222);
   circle(800,780,150);
   board[4][4] = 1;
   turn();
  }else if(board[4][3] == 0){
    fill(218,160,222);
   circle(800,610,150);
   board[4][3] = 1;
   turn();
  }else if(board[4][2] == 0){
   fill(218,160,222);
   circle(800,440,150);
   board[4][2] = 1;
   turn();
  }else if(board[4][1] == 0){
    fill(218,160,222);
   circle(800,270,150);
   board[4][1] = 1;
   turn();
  }else if(board[4][0] == 0){
    fill(218,160,222);
   circle(800,100,150);
   board[4][0] = 1;
   turn();
  }
}else if(mouseX <= 825 && mouseX>=676 && p2 == 1&& value == 1){
    if(board[4][5] == 0){
       fill(218,160,222);
      circle(800, 950, 150);
      board[4][5] = 1;
    turn();
  }else if(board[4][4] == 0){
    fill(218,160,222);
   circle(800,780,150);
   board[4][4] = 1;
   turn();
  }else if(board[4][3] == 0){
    fill(218,160,222);
   circle(800,610,150);
   board[4][3] = 1;
   turn();
  }else if(board[4][2] == 0){
   fill(218,160,222);
   circle(800,440,150);
   board[4][2] = 1;
   turn();
  }else if(board[4][1] == 0){
    fill(218,160,222);
   circle(800,270,150);
   board[4][1] = 1;
   turn();
  }else if(board[4][0] == 0){
    fill(218,160,222);
   circle(800,100,150);
   board[4][0] = 1;
   turn();
  }
}else if(mouseX <= 825 && mouseX>=676 && p1 == 2&& value == 0){
    if(board[4][5] == 0){
       fill(110,255,134);
      circle(800, 950, 150);
      board[4][5] = 2;
    turn();
  }else if(board[4][4] == 0){
    fill(110,255,134);
   circle(800,780,150);
   board[4][4] = 2;
   turn();
  }else if(board[4][3] == 0){
    fill(110,255,134);
   circle(800,610,150);
   board[4][3] = 2;
   turn();
  }else if(board[4][2] == 0){
   fill(110,255,134);
   circle(800,440,150);
   board[4][2] = 2;
   turn();
  }else if(board[4][1] == 0){
    fill(110,255,134);
   circle(800,270,150);
   board[4][1] = 2;
   turn();
  }else if(board[4][0] == 0){
    fill(110,255,134);
   circle(800,100,150);
   board[4][0] = 2;
   turn();
  }
}else if(mouseX <= 825 && mouseX>=676 && p2 == 2&& value == 1){
    if(board[4][5] == 0){
       fill(110,255,134);
      circle(800, 950, 150);
      board[4][5] = 2;
    turn();
  }else if(board[4][4] == 0){
    fill(110,255,134);
   circle(800,780,150);
   board[4][4] = 2;
   turn();
  }else if(board[4][3] == 0){
    fill(110,255,134);
   circle(800,610,150);
   board[4][3] = 2;
   turn();
  }else if(board[4][2] == 0){
   fill(110,255,134);
   circle(800,440,150);
   board[4][2] = 2;
   turn();
  }else if(board[4][1] == 0){
    fill(110,255,134);
   circle(800,270,150);
   board[4][1] = 2;
   turn();
  }else if(board[4][0] == 0){
    fill(110,255,134);
   circle(800,100,150);
   board[4][0] = 2;
   turn();
  }
}else if(mouseX >= 875 && mouseX<=1000 && p1 == 2&& value == 0){
    if(board[5][5] == 0){
       fill(110,255,134);
      circle(975, 950, 150);
      board[5][5] = 2;
    turn();
  }else if(board[5][4] == 0){
    fill(110,255,134);
   circle(975,780,150);
   board[5][4] = 2;
   turn();
  }else if(board[5][3] == 0){
    fill(110,255,134);
   circle(975,610,150);
   board[5][3] = 2;
   turn();
  }else if(board[5][2] == 0){
   fill(110,255,134);
   circle(975,440,150);
   board[5][2] = 2;
   turn();
  }else if(board[5][1] == 0){
    fill(110,255,134);
   circle(975,270,150);
   board[5][1] = 2;
   turn();
  }else if(board[5][0] == 0){
    fill(110,255,134);
   circle(975,100,150);
   board[5][0] = 2;
   turn();
  }
}else if(mouseX >= 875 && mouseX<=1000 && p2 == 2&& value == 1){
    if(board[5][5] == 0){
       fill(110,255,134);
      circle(975, 950, 150);
      board[5][5] = 2;
    turn();
  }else if(board[5][4] == 0){
    fill(110,255,134);
   circle(975,780,150);
   board[5][4] = 2;
   turn();
  }else if(board[5][3] == 0){
    fill(110,255,134);
   circle(975,610,150);
   board[5][3] = 2;
   turn();
  }else if(board[5][2] == 0){
   fill(110,255,134);
   circle(975,440,150);
   board[5][2] = 2;
   turn();
  }else if(board[5][1] == 0){
    fill(110,255,134);
   circle(975,270,150);
   board[5][1] = 2;
   turn();
  }else if(board[5][0] == 0){
    fill(110,255,134);
   circle(975,100,150);
   board[5][0] = 2;
   turn();
  }
}else if(mouseX >= 875 && mouseX<=1000 && p1 == 1&& value == 0){
    if(board[5][5] == 0){
      fill(218,160,222);
      circle(975, 950, 150);
      board[5][5] = 1;
    turn();
  }else if(board[5][4] == 0){
    fill(218,160,222);
   circle(975,780,150);
   board[5][4] = 1;
   turn();
  }else if(board[5][3] == 0){
    fill(218,160,222);
   circle(975,610,150);
   board[5][3] = 1;
   turn();
  }else if(board[5][2] == 0){
   fill(218,160,222);
   circle(975,440,150);
   board[5][2] = 1;
   turn();
  }else if(board[5][1] == 0){
    fill(218,160,222);
   circle(975,270,150);
   board[5][1] = 1;
   turn();
  }else if(board[5][0] == 0){
    fill(218,160,222);
   circle(975,100,150);
   board[5][0] = 1;
   turn();
  }
}else if(mouseX >= 875 && mouseX<=1000 && p2 == 1&& value == 1){
    if(board[5][5] == 0){
      fill(218,160,222);
      circle(975, 950, 150);
      board[5][5] = 1;
    turn();
  }else if(board[5][4] == 0){
    fill(218,160,222);
   circle(975,780,150);
   board[5][4] = 1;
   turn();
  }else if(board[5][3] == 0){
    fill(218,160,222);
   circle(975,610,150);
   board[5][3] = 1;
   turn();
  }else if(board[5][2] == 0){
   fill(218,160,222);
   circle(975,440,150);
   board[5][2] = 1;
   turn();
  }else if(board[5][1] == 0){
    fill(218,160,222);
   circle(975,270,150);
   board[5][1] = 1;
   turn();
  }else if(board[5][0] == 0){
    fill(218,160,222);
   circle(975,100,150);
   board[5][0] = 1;
   turn();
  }
}else if(mouseX <= 875 && mouseX>=1000 && p1 == 1&& value == 0){
    if(board[5][5] == 0){
      fill(218,160,222);
      circle(975, 950, 150);
      board[5][5] = 1;
    turn();
  }else if(board[5][4] == 0){
    fill(218,160,222);
   circle(975,780,150);
   board[5][4] = 1;
   turn();
  }else if(board[5][3] == 0){
    fill(218,160,222);
   circle(975,610,150);
   board[5][3] = 1;
   turn();
  }else if(board[5][2] == 0){
   fill(218,160,222);
   circle(975,440,150);
   board[5][2] = 1;
   turn();
  }else if(board[5][1] == 0){
    fill(218,160,222);
   circle(975,270,150);
   board[5][1] = 1;
   turn();
  }else if(board[5][0] == 0){
    fill(218,160,222);
   circle(975,100,150);
   board[5][0] = 1;
   turn();
  }
}else if(mouseX >= 1101 && mouseX<=1260 && p1 == 1&& value == 0){
    if(board[5][6] == 0){
      fill(218,160,222);
      circle(1150, 950, 150);
      board[5][6] = 1;
    turn();
  }else if(board[4][6] == 0){
    fill(218,160,222);
   circle(1150,780,150);
   board[4][6] = 1;
   turn();
  }else if(board[3][6] == 0){
    fill(218,160,222);
   circle(1150,610,150);
   board[3][6] = 1;
   turn();
  }else if(board[2][6] == 0){
   fill(218,160,222);
   circle(1150,440,150);
   board[2][6] = 1;
   turn();
  }else if(board[1][6] == 0){
    fill(218,160,222);
   circle(1150,270,150);
   board[1][6] = 1;
   turn();
  }else if(board[0][6] == 0){
    fill(218,160,222);
   circle(1150,100,150);
   board[0][6] = 1;
   turn();
  }
}else if(mouseX >= 1101 && mouseX<=1260 && p2 == 1&& value == 1){
    if(board[5][6] == 0){
      fill(218,160,222);
      circle(1150, 950, 150);
      board[5][6] = 1;
    turn();
  }else if(board[4][6] == 0){
    fill(218,160,222);
   circle(1150,780,150);
   board[4][6] = 1;
   turn();
  }else if(board[3][6] == 0){
    fill(218,160,222);
   circle(1150,610,150);
   board[3][6] = 1;
   turn();
  }else if(board[2][6] == 0){
   fill(218,160,222);
   circle(1150,440,150);
   board[2][6] = 1;
   turn();
  }else if(board[1][6] == 0){
    fill(218,160,222);
   circle(1150,270,150);
   board[1][6] = 1;
   turn();
  }else if(board[0][6] == 0){
    fill(218,160,222);
   circle(1150,100,150);
   board[0][6] = 1;
   turn();
  }
}else if(mouseX >= 1101 && mouseX<=1260 && p1 == 2&& value == 0){
    if(board[5][6] == 0){
      fill(110,255,134);
      circle(1150, 950, 150);
      board[5][6] = 2;
    turn();
  }else if(board[4][6] == 0){
    fill(110,255,134);
   circle(1150,780,150);
   board[4][6] = 2;
   turn();
  }else if(board[3][6] == 0){
   fill(110,255,134);
   circle(1150,610,150);
   board[3][6] = 2;
   turn();
  }else if(board[2][6] == 0){
   fill(110,255,134);
   circle(1150,440,150);
   board[2][6] = 2;
   turn();
  }else if(board[1][6] == 0){
    fill(110,255,134);
   circle(1150,270,150);
   board[1][6] = 2;
   turn();
  }else if(board[0][6] == 0){
    fill(110,255,134);
   circle(1150,100,150);
   board[0][6] = 2;
   turn();
  }
}else if(mouseX >= 1101 && mouseX<=1260 && p2 == 2&& value == 1){
    if(board[5][6] == 0){
      fill(110,255,134);
      circle(1150, 950, 150);
      board[5][6] = 2;
    turn();
  }else if(board[4][6] == 0){
    fill(110,255,134);
   circle(1150,780,150);
   board[4][6] = 2;
   turn();
  }else if(board[3][6] == 0){
   fill(110,255,134);
   circle(1150,610,150);
   board[3][6] = 2;
   turn();
  }else if(board[2][6] == 0){
   fill(110,255,134);
   circle(1150,440,150);
   board[2][6] = 2;
   turn();
  }else if(board[1][6] == 0){
    fill(110,255,134);
   circle(1150,270,150);
   board[1][6] = 2;
   turn();
  }else if(board[0][6] == 0){
    fill(110,255,134);
   circle(1150,100,150);
   board[0][6] = 2;
   turn();
  }
}
}
