main(List<String> args) {

  //1-masala----------------------

  double a = 2.3, b = 3.2, c = 6.5;
  print((a+b+c)/3);

  //2-masala----------------------
  
  double d = 3, e = 5, f = 5;
  if (d == e && e == f) {
    print("Teng tomonli uchburchak");    
  } else if(d == e || d == f || e == f){
    print("Teng yonli uchburchak");
  } else{
    print("Turli tomonli uchburchak");
  }

  //3-masala----------------------
  
  double oraliq = 60, yakuniy = 50, umumiy = oraliq * 0.4 + yakuniy * 0.6; 

  if (umumiy > 100) {
    print("$umumiy bal = Grant");    
  } else if (umumiy <= 100 && umumiy >= 86) {
    print("$umumiy bal = 5 baxo");
  } else if (umumiy <= 86 && umumiy >= 71) {
    print("$umumiy bal = 4 baxo");
  } else if (umumiy <= 71 && umumiy >= 56) {
    print("$umumiy bal = 3 baxo");
  } else {
    print("$umumiy bal = o'ta olmadingiz");
  }

  //4-masala----------------------

  String name = "Zuhriddin";
  int i = 1;

  print("-------for--------");
  for (var i = 1; i < 6; i++) {
    print("$i:" + name);    
  }

  print("-------while--------");
  while (i<5) {
    print("$i: " + name); 
    i++;
  }
  //5-masala----------------------

  for (int i = 1; i < 100; i++) {
    if (i % 15 == 0 ) {
      print(i*i);      
    }    
  }
  
  //6-masala----------------------
  print("-------faktorial-------");

  int fnum = 5;
  int faktorial = 1;
  for (int i = 1; i <= fnum; i++) {
    faktorial = faktorial * i;
    
  }
  print("$fnum sonining faktoriali: $faktorial");


}