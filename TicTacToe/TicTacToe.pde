int value = 0;
String[][] gameBoard = {
{" "," "," "},
{" "," "," "},
{" "," "," "}};
void setup(){
  textSize(90);
 size(400,400); 
 drawGameboard();
 playerTurn();
}
void drawGameboard(){
 rect(-1,-1,401,401);
 fill(0,0,0);
 rect(0,125,400,10);
  rect(0,250,400,10);
  rect(125,0,10,400);
  rect(250,0,10,400);
}

void draw() {

}

void mouseClicked() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
  if(mouseX<= 133 && mouseY<=133){
    text("X",45,90);
  }
  println("Clicked!");
  print("X " + mouseX);
  println("  Y " + mouseY);
}
void playerTurn(){
  
}
