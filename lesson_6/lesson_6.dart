main() {
  //---------------INHERITENCE-----------------

  /*
  var kesha = Cat();
  kesha.eat();
  kesha.voice();
  kesha.color = "Malla";
  print(kesha.color);
  
  var bobik = Dog();
  bobik.color = "Qora";
  bobik.voice();
  bobik.eat();

  Shepherd bars = Shepherd();
  bars.voice();
  */
  
  //--------------OOP -> INHERITENCE'da CONSTRUCTORLAR-------------

var avto = Daewo("Nexia", "Qora");

  //---------------POLIMORFIZM-----------------

  Xarbiy x1 = Xarbiy();
  hurmat(x1);

  Xarbiy a1 = Askar();
  hurmat(a1);                 //UPCASTING

  Xarbiy s1 = Serjant();
  hurmat(s1);                 //UPCASTING

  Leytenant l1 = Leytenant();
  hurmat(l1);                 //UPCASTING

  //---------------ABSTRACT CLASS'lar-----------------

  var bike1 = Bike();
  bike1.otOl();
  bike1.chiroqniYoq();

  // var t1 = Transport(); // error: Abstract classes can't be instantiated.
  //                       //Try creating an instance of a concrete subtype

  //---------------OOP'da INTERFACE'lar-----------------

  var tv = Tv();
  tv.switchSession();
  tv.sonOqi();

    //---------------OOP da STATIK-----------------

  var o1 = Oquvchi();
  o1.sanoq +=1; // obyektga tegishli o'zgaruvchi

  var o2 = Oquvchi();
  o1.sanoq +=1; // obyektga tegishli o'zgaruvchi
  var o3 = Oquvchi();
  o1.sanoq +=1; // obyektga tegishli o'zgaruvchi
}

class Oquvchi {
  int sanoq = 0;
  static int id = 0;
  Oquvchi(){
    id ++;  // klasga tegishli o'zgaruvchi
    print("Sanoq: $sanoq");
    print("Id: $id");
  }
}

class Remote {
  void switchSession() {
    print("On/Of");
  }
}

class OtherClass {
  int? son;
  OtherClass([this.son]);
  void sonOqi(){
    print(son);
  }
}

class Tv implements Remote, OtherClass{
  @override
  void switchSession() {
    print("TV");
  }

  @override
  // TODO: implement son
  int? get son {
    print("Getter son: $son");
  }

  @override
  set son(int? _son) {
    print("Setter son: $son");
  }

  @override
  void sonOqi() {
    // TODO: implement sonOqi
  }
}

abstract class Transport {   // <- ABSTRACT CLASS
  void otOl() {
    print("O't oldi !!!");
  }
  void chiroqniYoq() {
    print("Chiroq yoqildi !!!");
  }
}

class Bike extends Transport{}

void hurmat(Xarbiy x){ //polimorfizm
  x.salomBer();        //polimorfizm
}

class Xarbiy{
  void salomBer(){
    print("Xarbiy salom berdi");
  }
}

class Askar extends Xarbiy{
  @override 
  void salomBer(){
    print("Askar salom berdi");
  }
}

class Serjant extends Xarbiy{
  @override 
  void salomBer(){
    print("Serjant salom berdi");
  }
}

class Leytenant extends Xarbiy{
  @override 
  void salomBer(){
    print("Leytenant salom berdi");
  }
}

class Auto{
  String? color;
  Auto(this.color){
    print("Auto clasidan obekt olindi. Rang: $color !!");
  }
  Auto.namedConstructor();
}

class Daewo extends Auto {
  String? model;
  Daewo(this.model, String color): super(color){
    print("Daewo clasidan ildiz olindi. Model: $model");
  }
}

class Animal extends Object {
  String color = "Yellow";
  void eat(){
    print("Animal is eating...");
  }
} 

class Cat extends Animal {
  int? yosh;
  void voice(){
    print("Meoooow...");
  }

  @override 
  void eat() {
    // super.eat();
    print("Cat is eating...");
  } 
}

class Dog extends Animal{
  String? tur;
  void voice(){
    print("Vow Vow...");
  }
  void eat() {
    super.eat();
    print("Dog is eating...");
  }
}

class Shepherd extends Dog{
}