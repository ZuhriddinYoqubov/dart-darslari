import 'dart:math';

main(List<String> args) {

  List ls1 = List.generate(10, (index) => index + 10);
  print(ls1);

  List ls2 = List.generate(15, (index) => randomOquvchiKirit());
  // print(ls2);

  List<Oquvchi> hammaOquvchilar = ls1.map((e) {
    return Oquvchi("Oquvchi $e", e);
  }).toList();
  // print(hammaOquvchilar);
  String nomTop(){
    int index = Random().nextInt(4);
    List model = ["Tesla", "Chevrolet", "Mersedes", "Toyota", "Daewo"];
    return model[index];
  }

  int tek = 0;

  String rangTop(){
    List color = ["Qora", "Oq", "Ko'k", "Qizil", "Yashil", "Sariq"];
    while (true) {
      int index = Random().nextInt(color.length);
      if (index != tek) {
        tek = index;
        return color[index];
        break;
      }
    }
  }
  
  int narx(){
    return Random().nextInt(87) * 1000;
  } 

  List<Car> allCars = List.generate(10, (index) {
    return Car.ikki(nomTop(), narx(), rangTop());
  });

  allCars.forEach((element) => print(element));

  
}

int randomOquvchiKirit() => 1 + Random().nextInt(30);

class Oquvchi {
  String ism;
  int id;
  Oquvchi(this.ism,this.id);
  @override
    String toString() {
      // TODO: implement toString
      return "Ism: ${this.ism}. ID: ${this.id}";
    }
}

class Car {
  String model;
  int price;
  String color;
  Car.ikki(this.model, this.price, this.color);
  @override
    String toString() {
      return "Model: ${this.model}, Narx: ${this.price}, Rang: ${this.color}";
    }
}



