int[] ages = {5, 2, 10, 17};
int rating = 4;
boolean o = false; 
for(int x = 0; x <= ages.length-1; x= x+1){
  if(ages[x] <= 10){
   ages[x] = 1;
 }else if(ages[x] <= 13){
   ages[x]= 2;
 }else if(ages[x] <= 17){
   ages[x]= 3;
 }else if(ages[x]>= 18){
   ages[x]= 4;
}
}
if(ages[0] == rating){
   o = true;
}else if(ages[1] == rating){
   o = true;
}else if(ages[2] == rating){
   o = true;
}else if(ages[3] == rating){
   o = true;
}
if(o == true){
  print("This group can see the movie");
}else{
 print("This group can't see the movie"); 
}
