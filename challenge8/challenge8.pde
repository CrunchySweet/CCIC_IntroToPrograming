String[] dna ={"T", "A", "C"};
String[] rna = {"", "", ""};
for(int x = 0; x < dna.length; x++){
  if(dna[x] == "T"){
    rna[x] = "A";}
    else if(dna[x] == "A"){
      rna[x] = "U";}
      else if(dna[x] == "C"){
        rna[x] = "G";}
}
println(dna);
println(rna);
println("=");
println("Met");
