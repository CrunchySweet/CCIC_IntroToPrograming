String[][] face = {
{" ", "*", " ", "*", " "},
{" ", " ", "*", " ", " "},
{"|", "_", "_", "_", "|"}};
void setup(){
  clear(); 
  wink();
   delay(1000);
   drawSmiley();
   delay(1000);
   clear();
   openEye();
  drawSmiley();
  delay(1000);
  clear();
    wink();
   delay(1000);
   drawSmiley();
   delay(1000);
   clear();
   openEye();
  drawSmiley();
  delay(1000);
  clear();
    wink();
   delay(1000);
   drawSmiley();
   delay(1000);
   clear();
   openEye();
  drawSmiley();
  delay(1000);
  clear();
    wink();
   delay(1000);
   drawSmiley();
   delay(1000);
   clear();
   openEye();
  drawSmiley();
  delay(1000);
}
void wink(){
  face[0][3] = "_";
}
void openEye(){
  face[0][3] = "*";
}
void drawSmiley(){
  for(int i = 0; i < 3; i++){
    for(int x = 0; x < 5; x++){
      print(face[i][x]);
    }
    println("");
  }
}
void clear(){
 println(""); 
  println(""); 
   println(""); 
  println(""); 
   println("");    
}
