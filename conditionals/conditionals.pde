int x = 15;
if (x%5 == 0 && x%3 == 0){
println("It is a multiple of 3 and 5!");
}else if (x % 3 == 0){
  print("It is a multiple of 3!");
}else if (x%5==0){
  print("It is a multiple of 5");
}
if ("Lime" == "lime"){
  print("They are the same!");
}else{
  println("Uh oh! Check capitalization and spelling please.");
}
int[] X = {5, 6, 1};
float diss = (X[1] * X[1] - (4*X[0]*X[2]));
if (diss >= 0){
float num = -1 * X[1] + sqrt(diss);
float numsub = -1 * X[1] - sqrt(diss);
float deno = 2 * X[0];
println("X is" + num/deno);
println ("X is" + numsub/deno);
}else{
 println("Can't find a solution. Sorry"); 
}
int[][] matrix = 
{{43, 52, 50, 72, 82, 88, 72},
{70, 68, 86, 72, 75, 81, 75},
{82, 82, 82, 86, 41, 46, 59},
{60, 56, 71, 81, 88, 85, 78}};
if(matrix[1][1] <= 65){
 println("You need a coat today."); 
}else{
 println("You dont need a coat today. W.W");
}
