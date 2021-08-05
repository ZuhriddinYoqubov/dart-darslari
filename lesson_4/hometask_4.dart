import 'dart:math';

main(List<String> args) {
  // 1-masala

  double a = 2, b = 3;
  double c = (a * a) + (b * b);
  print("Natija: " + c.toString());

  // 2-masala
  int son = 0;
  List sonlar = List.generate(6, (index) => index+1);
  
  for (int i in sonlar) {
   son += i;    
  }
  print(son);

  // 3-masala
  int son1 = 0;
  List sonlar1 = List.generate(100, (index) => index+1);
  
  for (int i in sonlar1) {
   son1 += i;    
  }
  print(son1);

  // 4-masala
  int son2 = 1;
  for (int i =1; i < 100; i++) {
    if (son2 % 3 ==0 && son2 % 5 == 0) {
      print(son2);
      
    }
    son2 ++;
  }

  // 5-masala

  int son3 = 2;
  int tub = 13;
  bool isPrime = true;

  for (int i = 2; i <= tub ~/ 2; i++) {
    if (tub % i == 0){
      isPrime = false;
      break;
    }

  }

  if (isPrime) print("tub son");

  // 6-masala
  double son4 = 9;

  if (son4 % 2 == 0){
    print("Juft son");
  }else{
    print("Toq son");
  }


  









}