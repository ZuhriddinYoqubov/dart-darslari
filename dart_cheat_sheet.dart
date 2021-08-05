// import 'DateTime';


main() {
  
  //-----------VARIABLES----O'zgaruvchilar----------------

  int n1 = 5; // explicitly typed
  var n2 = 4; // type inferred
  // n2 = "abs"; //error
  dynamic n3 = 4; // dynamic means n3 can take on any type
  n3 ="abs";
   double n4; //n4 is null
   String s1 = 'Hello world!';
  var s2 = "Hello world!";

  //-----------CONSTANT----O'zgarmas qiymat-------------------

  const PI = 3.14; 
  // const is used for compile-time constant

  final area = PI * 5*5;
  //finar variables can only be set once

  //-----------CONDITIONAL EXPRESSIONS----------------------- 

  var grade = 3;
  var reply = grade > 3 ? "cool":"not cool";

  var input; // input is null
  var age = input ?? 0;
  print(age); // 0
  print(reply);

  
  //-----------FUNCTIONS----------------------- 

  void doSomething() {
    print('doSomething()');
  }
  
  int addNums1(num1,num2,num3) {
    return num1 + num2 + num3;
  }

  doSomething();
  print(addNums1(1,2,3));


  //-----------ARROW sintaksisi yani (=>)----------------------- 

  // void doSomethingElse() {
  //   doSomething();
  // }
  // yuqoridagi kodni arrow yani (=>) sintaksisi orqali yozish mumkin. masalan:

  void doSomethingElse() => doSomething();

  doSomethingElse();

  //------------OPTIONAL POSITIONAL PARAMETRLAR-------------------
  int addNums2(num1,[num2 = 0,num3 = 0]) {
    return num1 + num2 + num3;
  }

  print(addNums2(1));
  print(addNums2(1,2));
  print(addNums2(1,2,3));

  //------------NAMED PARAMETRLAR-------------------
  int addNums3({num1,num2,num3}) {
    return num1 + num2 + num3;
  }

  print(addNums3(num1:1,num2:4,num3:3));

  //------------OPTIONAL NAMED PARAMETRLAR-------------------

  int addNums4(num1, {num2=0, num3=0}) {
    return num1 + num2 + num3;
  }

  print(addNums4(1));
  print(addNums4(1, num3:2));
  print(addNums4(1, num2:5, num3:6));
   
  //------------PARSING (grammatik tahlil qilmoq)-------------------
  var st1 = "123";
  var st2 = "12.56";
  var st3 = "12.a56";
  var st4 = "12.0";

  print(num.parse(st1)); // 123
  print(num.parse(st2)); // 12.56
  //print(num.parse(st3)); //error: Exception has occurred.FormatException: 12.a56
  print(num.tryParse(st3)); // 123






}
