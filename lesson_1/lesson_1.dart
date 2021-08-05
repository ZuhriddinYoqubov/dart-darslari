
main() {
  
  /*
  print("Hello, World!");

  int num2;
  num2 = 12;

  double num1;
  num1 = 45.5;

  print(num2);
  print("num");

  num a;
  a = 45;
  var b;
  b = 45;

  int dec = 45;
  int hex = 0x10;

  print(hex);

  double exponentNum = 4.3e5;
  print(exponentNum);

  var r = 54.5;
  r = 54;

  var n = 45;
  // n = 45.2; Error

  var son = 55;
  int son1 = 66;

  bool log = true;

*/

  String? name;
  print(name);

  String name1 = 'john';
  String lastname = 'Wick';

  print(name1 + ' ' + lastname);
  // String interpolation

  int age = 26;
  name = "Bahromon";
  print("My name is: $name. I'm $age years old");

  int num11 = 10, num12 = 30;
  print("$num11 + $num12 = ${num11 + num12}");

  print("Hello Hello Hello Hello Hello Hello " +
      "Hello Hello Hello Hello Hello ");

  int num5 = 10;
  print("Your number is: " + num5.toString());

  double? width, height;

  height = 10;
  width = 20;
  print("$width sm and $height: perimeter: ${width * height}");

  // const declare qilingan vaqtda qiymat berish shart, aks holda xato beradi

  const int NUM_11 = 44;
  print(NUM_11);

  // final o'zgaruvchida o'zgavchini tanitayotgan vaqtda qiymat berish shart
  // emas. Keyin Assign qilsa ham bo'ladi va qiymatni boshqa o'zgartirib bo'lmaydi.
  // constantalarning nomlar katta harflar bilan beriladi.
  
  final int NUM_44;
  NUM_44 = 78;
  print(NUM_44);

 
}
