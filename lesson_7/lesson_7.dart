import 'lesson_7-helper.dart';

main() {
//--------------------------------------------
// var a = HomePage(12);
// print(a);
// print(a.getRaqam);
// a.setRaqam = 123;
// print(a.getRaqam);
// a.setRaqam = 23;
// print(a.getRaqam);
//--------------------------------------------

  // FUNCTIONAL PROGRAMING
//--------LAMBDA FUNCTION: NOMSIZ FUNCTION--------
/*
Function funk = (int a, int b) => print(a+b);
funk(2,4);
var funk2 = (String name) => "Hello $name";
print(funk2("Zuhriddin"));
List<String> lst1 = List.generate(7, (sanoq) => "E: $sanoq");
print(lst1);
lst1.forEach((element) => print(element));
*/

  //------HIGH ORDER FUNCTION (YUQORI MARTABALI FUNKSIYA)------
  
  // funksiyaning parametrida yoki return qilayotgan parametrida funksiya bo'lsa
  // high order function deyiladi

  Function f1 = (s1, s2) => print(s1 + s2);
  birFunk("Amirberk", f1);
  birFunk("Asadberk", (n1,n2)=> n1+n2);

  var funksiya  = otherFunk();
  print(funksiya(8));

  print(otherFunk()(7));

  //-----CLOSURE------------
  //-----LEXICAL CLOSURE------------/ o'zgaruvchining qiymatini maxsus funksiya orqali o'zgartirish

  String ism = "Sherzod";
  Function ismOzgartir = () {  //(closure
    ism = "Abdulla";
    print(ism);
  };
  ismOzgartir();
  print(ism);

Function ismKorsat = () {
  String nom = "Jorj";
  Function ismAyt = (String yangiNom) {
    nom = yangiNom;
    print(nom); 
  };
  return ismAyt;
};

ismKorsat()("Bursh");

int fibonacci(int n) => n <= 2 ? 1 : fibonacci(n - 2) + fibonacci (n - 1); // fibonachi formulasi
print(fibonacci(7));

}

//-------MAIN OXIRI-------------------------------------------------------------------------

void birFunk(String name, Function funk){
  print("Hello $name");
  print(funk(10,20));
}

Function otherFunk(){
  Function aFunk = (int s1) => s1 * s1;
  return aFunk;
}