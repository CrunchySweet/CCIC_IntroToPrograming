int value = 0;
String p1;
String p2;
String[][] gameBoard = 
{{" ", " ", " "},
{" ", " ", " "},
{" ", " ", " "}};
void setup(){
  size(400,400);
  setupGame();
  choosePiece();
}
void startGame(){
 background(255,255,255); 
 fill(0,0,0);
 rect(123,0, 20,400);
 rect(255,0, 20,400);
 rect(0,123, 400,20);
 rect(0,255, 400,20);
}
void p1wins(){
  background(0);
   textSize(25);
   fill(255,255,255);
 text("Player 1 wins!!!!!!!!", 75, 150);
 text("Player 1 pick the better piece again", 30, 200);
 text("By hitting X or O on the keyboard", 35, 250);
}
void p2wins(){
   background(0);
   textSize(25);
   fill(255,255,255);
 text("Player 2 wins!!!!!!!!", 75, 150);
 text("Player 1 pick the better piece again", 30, 200);
 text("By hitting X or O on the keyboard", 35, 250);
}
void turnchange(){
 if(value == 0){
   value = 1;
 }else{
   value = 0;
}
}
void checkGame(){
  
}

void setupGame(){
 background(0);
 textSize(25);
 text("Player 1 pick the better piece", 45, 200);
 text("By hitting X or O on the keyboard", 35, 250);
}
void choosePiece(){
  
}
void draw() {
    if(gameBoard[0][0] == gameBoard[0][1] && gameBoard[0][0] == gameBoard[0][2] && gameBoard[0][1] == gameBoard[0][2]){
    if(gameBoard[0][0] == p2){
      p2wins();
    }else if(gameBoard[0][0] == p1){
      p1wins();
    }
  }else if(gameBoard[1][0] == gameBoard[1][1] && gameBoard[1][0] == gameBoard[1][2] && gameBoard[1][1] == gameBoard[1][2]){
    if(gameBoard[1][0] == p2){
      p2wins();
    }else if(gameBoard[1][0] == p1){
      p1wins();
    }
    }else if(gameBoard[2][0] == gameBoard[2][1] && gameBoard[2][0] == gameBoard[2][2] && gameBoard[2][1] == gameBoard[2][2]){
    if(gameBoard[2][0] == p2){
      p2wins();
    }else if(gameBoard[2][0] == p1){
      p1wins();
    }}else if(gameBoard[1][0] == gameBoard[2][0] && gameBoard[0][0] == gameBoard[2][0] && gameBoard[0][0] == gameBoard[1][0]){
    if(gameBoard[2][0] == p2){
      p2wins();
    }else if(gameBoard[2][0] == p1){
      p1wins();
  }   
      }else if(gameBoard[1][1] == gameBoard[2][1] && gameBoard[0][1] == gameBoard[2][1] && gameBoard[0][1] == gameBoard[1][1]){
    if(gameBoard[2][1] == p2){
      p2wins();
    }else if(gameBoard[2][1] == p1){
      p1wins();
   }   
  }else if(gameBoard[1][2] == gameBoard[2][2] && gameBoard[0][2] == gameBoard[2][2] && gameBoard[0][2] == gameBoard[1][2]){
    if(gameBoard[1][2] == p2){
      p2wins();
    }else if(gameBoard[1][2] == p1){
      p1wins();
  }   
      }
 else if(gameBoard[0][0] == gameBoard[1][1] && gameBoard[0][0] == gameBoard[2][2] && gameBoard[1][1] == gameBoard[2][2]){
    if(gameBoard[0][0] == p2){
      p2wins();
    }else if(gameBoard[0][0] == p1){
      p1wins();
  }   
      }else if(gameBoard[0][2] == gameBoard[2][0] && gameBoard[0][2] == gameBoard[1][1] && gameBoard[2][0] == gameBoard[1][1]){
    if(gameBoard[2][0] == p2){
      p2wins();
    }else if(gameBoard[2][0] == p1){
      p1wins();
  }   
      }
}
void keyTyped(){
 if(key == 'x'){
  p1="X";
  p2="O";
  gameBoard[0][0] = " ";
  gameBoard[0][1] = " ";
  gameBoard[0][2] = " ";
  gameBoard[1][0] = " ";
  gameBoard[1][1] = " ";
  gameBoard[1][2] = " ";
  gameBoard[2][0] = " ";
  gameBoard[2][1] = " ";
  gameBoard[2][2] = " ";
  value = 0;
  startGame();
 }else if(key == 'o'){
  p1="O";
  p2="X";
  gameBoard[0][0] = " ";
  gameBoard[0][1] = " ";
  gameBoard[0][2] = " ";
  gameBoard[1][0] = " ";
  gameBoard[1][1] = " ";
  gameBoard[1][2] = " ";
  gameBoard[2][0] = " ";
  gameBoard[2][1] = " ";
  gameBoard[2][2] = " ";
  value = 0;
  startGame();
 }
}

void mouseClicked() {
  if (mouseX <= 123 && mouseY <= 123 && value == 0 &&p1 == "X" && gameBoard[0][0] == " " ) {
    textSize(70);
    text("X", 45, 80);
    gameBoard[0][0] = "X";
    turnchange();
  }else if(mouseX <= 123 && mouseY <= 123 &&value == 0 && p1 == "O" && gameBoard[0][0] == " " ) {
    textSize(70);
    text("O", 45, 80);
    gameBoard[0][0] = "O";
   turnchange();
}else  if (mouseX <= 123 && mouseY <= 123 &&value == 1 &&  p2 == "X" && gameBoard[0][0] == " " ) {
    textSize(70);
    text("X", 45, 80);
    gameBoard[0][0] = "X";
turnchange();
  }else if(mouseX <= 123 && mouseY <= 123 &&value == 1 &&   p2 == "O" && gameBoard[0][0] == " " ) {
    textSize(70);
    text("O", 45, 80);
    gameBoard[0][0] = "O";
  turnchange();
}else  if (mouseX >= 123 &&mouseX <= 255 && mouseY <= 123 &&value == 0 &&  p1 == "X" && gameBoard[0][1] == " " ) {
    textSize(70);
    text("X", 180, 80);
    gameBoard[0][1] = "X";
    turnchange();
  }else if(mouseX >= 123 &&mouseX <= 255 && mouseY <= 123 &&value == 0 &&  p1 == "O" && gameBoard[0][1] == " " ) {
    textSize(70);
    text("O", 180, 80);
    gameBoard[0][1] = "O";
  turnchange();
}else if (mouseX >= 123 &&mouseX <= 255 && mouseY <= 123 &&value == 1 &&  p2 == "X" && gameBoard[0][1] == " " ) {
    textSize(70);
    text("X", 180, 80);
    gameBoard[0][1] = "X";
   turnchange();
  }else if(mouseX >= 123 &&mouseX <= 255 && mouseY <= 123 &&value == 1 &&  p2 == "O" && gameBoard[0][1] == " " ) {
    textSize(70);
    text("O", 180, 80);
    gameBoard[0][1] = "O";
  turnchange();
}else if(mouseX >= 255 && mouseY <= 123 &&value == 0 &&  p1 == "X" && gameBoard[0][2] == " " ) {
    textSize(70);
    text("X",315, 80);
    gameBoard[0][2] = "X"; 
    checkGame();
    turnchange();
}else if(mouseX >= 255 && mouseY <= 123 &&value == 0 &&  p1 == "O" && gameBoard[0][2] == " " ) {
    textSize(70);
    text("O",315, 80);
    gameBoard[0][2] = "O"; 
    checkGame();
    turnchange();
}else if(mouseX >= 255 && mouseY <= 123 &&value == 1 &&  p2 == "X" && gameBoard[0][2] == " " ) {
    textSize(70);
    text("X",315, 80);
    gameBoard[0][2] = "X"; 
    checkGame();
    turnchange();
}else if(mouseX >= 255 && mouseY <= 123 &&value == 1 &&  p2 == "O" && gameBoard[0][2] == " " ) {
    textSize(70);
    text("O",315, 80);
    gameBoard[0][2] = "O"; 
    checkGame();
    turnchange();
}else if(mouseX <= 123 && mouseY >= 123 &&mouseY <= 255  &&value == 0 &&  p1 == "X" && gameBoard[1][0] == " " ) {
    textSize(70);
    text("X",45, 215);
    gameBoard[1][0] = "X"; 
    checkGame();
    turnchange();
}else if(mouseX <= 123 && mouseY >= 123&& mouseY <= 255  &&value == 0 &&  p1 == "O" && gameBoard[1][0] == " " ) {
    textSize(70);
    text("O",45, 215);
    gameBoard[1][0] = "O"; 
    checkGame();
    turnchange();
}else if(mouseX <= 123 && mouseY >= 123 &&mouseY <= 255  &&value == 1 &&  p2 == "X" && gameBoard[1][0] == " " ) {
    textSize(70);
    text("X",45, 215);
    gameBoard[1][0] = "X"; 
    checkGame();
    turnchange();
}else if(mouseX <= 123 && mouseY >= 123&& mouseY <= 255  &&value == 1 &&  p2 == "O" && gameBoard[1][0] == " " ) {
    textSize(70);
    text("O",45, 215);
    gameBoard[1][0] = "O"; 
    checkGame();
    turnchange();
}else if(mouseX >= 123 &&mouseX <= 255 && mouseY >= 123 &&mouseY <= 255  &&value == 0 &&  p1 == "X" && gameBoard[1][1] == " " ) {
    textSize(70);
    text("X",180, 215);
    gameBoard[1][1] = "X"; 
    checkGame();
    turnchange();
}else if(mouseX >= 123 &&mouseX <= 255 && mouseY >= 123&& mouseY <= 255  &&value == 0 &&  p1 == "O" && gameBoard[1][1] == " " ) {
    textSize(70);
    text("O",180, 215);
    gameBoard[1][1] = "O"; 
    checkGame();
    turnchange();
}else if(mouseX >= 123 &&mouseX <= 255 && mouseY >= 123 &&mouseY <= 255  &&value == 1 &&  p2 == "X" && gameBoard[1][1] == " " ) {
    textSize(70);
    text("X",180, 215);
    gameBoard[1][1] = "X"; 
    checkGame();
    turnchange();
}else if(mouseX >= 123 &&mouseX <= 255 && mouseY >= 123&& mouseY <= 255  &&value == 1 &&  p2 == "O" && gameBoard[1][1] == " " ) {
    textSize(70);
    text("O",180, 215);
    gameBoard[1][1] = "O"; 
    checkGame();
    turnchange();
}else if(mouseX >= 255 && mouseY >= 123 &&mouseY <= 255  &&value == 0 &&  p1 == "X" && gameBoard[1][2] == " " ) {
    textSize(70);
    text("X",315, 215);
    gameBoard[1][2] = "X"; 
    checkGame();
    turnchange();
}else if(mouseX >= 255 && mouseY >= 123&& mouseY <= 255  &&value == 0 &&  p1 == "O" && gameBoard[1][2] == " " ) {
    textSize(70);
    text("O",315, 215);
    gameBoard[1][2] = "O"; 
    checkGame();
    turnchange();
}else if(mouseX >= 255 && mouseY >= 123 &&mouseY <= 255  &&value == 1 &&  p2 == "X" && gameBoard[1][2] == " " ) {
    textSize(70);
    text("X",315, 215);
    gameBoard[1][2] = "X"; 
    checkGame();
    turnchange();
}else if(mouseX >= 255 && mouseY >= 123&& mouseY <= 255  &&value == 1 &&  p2 == "O" && gameBoard[1][2] == " " ) {
    textSize(70);
    text("O",315, 215);
    gameBoard[1][2] = "O"; 
    checkGame();
    turnchange();
}else if(mouseX <= 133 && mouseY >= 255  &&value == 0 &&  p1 == "O" && gameBoard[2][0] == " " ) {
    textSize(70);
    text("O",45, 355);
    gameBoard[2][0] = "O"; 
    checkGame();
    turnchange();
}else if(mouseX <= 133 && mouseY >= 255  &&value == 0 &&  p1 == "X" && gameBoard[2][0] == " " ) {
    textSize(70);
    text("X",45, 355);
    gameBoard[2][0] = "X"; 
    checkGame();
    turnchange();
}else if(mouseX <= 133 && mouseY >= 255  &&value == 1 &&  p2 == "O" && gameBoard[2][0] == " " ) {
    textSize(70);
    text("O",45, 355);
    gameBoard[2][0] = "O"; 
    checkGame();
    turnchange();
}else if(mouseX <= 133 && mouseY >= 255  &&value == 1 &&  p2 == "X" && gameBoard[2][0] == " " ) {
    textSize(70);
    text("X",45, 355);
    gameBoard[2][0] = "X"; 
    checkGame();
    turnchange();
}
else if(mouseX >= 133 && mouseX <= 255 && mouseY >= 255  &&value == 0 &&  p1 == "O" && gameBoard[2][1] == " " ) {
    textSize(70);
    text("O",180, 355);
    gameBoard[2][1] = "O"; 
    checkGame();
    turnchange();
}else if(mouseX >= 133 && mouseX <= 255 && mouseY >= 255  &&value == 0 &&  p1 == "X" && gameBoard[2][1] == " " ) {
    textSize(70);
    text("X",180, 355);
    gameBoard[2][1] = "X"; 
    checkGame();
    turnchange();
}else if(mouseX >= 133 && mouseX <= 255 && mouseY >= 255  &&value == 1 &&  p2 == "O" && gameBoard[2][1] == " " ) {
    textSize(70);
    text("O",180, 355);
    gameBoard[2][1] = "O"; 
    checkGame();
    turnchange();
}else if(mouseX >= 133 && mouseX <= 255 && mouseY >= 255  &&value == 1 &&  p2 == "X" && gameBoard[2][1] == " " ) {
    textSize(70);
    text("X",180, 355);
    gameBoard[2][1] = "X"; 
    checkGame();
    turnchange();
}else if(mouseX >= 255 && mouseY >= 255  &&value == 0 &&  p1 == "O" && gameBoard[2][2] == " " ) {
    textSize(70);
    text("O",315, 355);
    gameBoard[2][2] = "O"; 
    checkGame();
    turnchange();
}else if(mouseX >= 255 && mouseY >= 255  &&value == 0 &&  p1 == "X" && gameBoard[2][2] == " " ) {
    textSize(70);
    text("X",315, 355);
    gameBoard[2][2] = "X"; 
    checkGame();
    turnchange();
}else if(mouseX >= 255 && mouseY >= 255  &&value == 1 &&  p2 == "O" && gameBoard[2][2] == " " ) {
    textSize(70);
    text("O",315, 355);
    gameBoard[2][2] = "O"; 
    checkGame();
    turnchange();
}else if(mouseX >= 255 && mouseY >= 255  &&value == 1 &&  p2 == "X" && gameBoard[2][2] == " " ) {
    textSize(70);
    text("X",315, 355);
    gameBoard[2][2] = "X"; 
    checkGame();
    turnchange();
}
}
