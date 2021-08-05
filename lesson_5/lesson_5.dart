
import 'lesson_5-2.dart';

main() {

  var tolib = Talaba();  //CONSTRUCTORSIZ CLASSDAN ILDIZ

  tolib.darsQil();
  tolib.uxla();
  tolib.showInfo();
  print("-------------+"
        "------------");
  tolib.talabaID = 1;
  tolib.talabaNomi = "Lutpilla ";
  tolib.talabaXolati = true;
  tolib.showInfo();


  print("-----------***------------");

  var neksiya = Car.tezliksiz("Neksiya", "Qizil"); //NAMED CONSTRUCTORLI CLASSDAN ILDIZ
  print(neksiya);

  var ferrari = Car ("Ferrari", "Sariq", 450 );    //CONSTRUCTORLI CLASSDAN ILDIZ
  print(ferrari);
}

//-----------------CONSTRUCTORLI CLASS--------------

class Car {
  String? nomi;
  String? rangi;
  int? tezlik;
  //--------------------------------------------------Parametrsiz Constructor

  //Car() {
  //  print("Cardan ildiz olinayapti !!!");     
  
  //-------------------------------------------------- Parametrli Constructor
  
  //-----------eski-usul-------------

  // Car(String? n, String? c, int? s) { //Constructor
  //  nomi = n;
  //  rangi = c;
  //  tezlik = s;
  // }

  //-----------yangi-usul-------------

  Car(this.nomi, this.rangi, this.tezlik) {
    print("Parametrli Constructordan ildiz olindi !");
  } 
  //--------------------------------------------------   NAMED CONSTRUCTOR
  Car.tezliksiz(this.nomi, this.rangi) {
    print("Parametrli va NAMED Constructordan ildiz olindi !");
  }

  @override
  String toString() {
    return "Nomi: $nomi, Rangi: $rangi, Tezlik: $tezlik";
  }
}

//-----------------CONSTRUCTORSIZ CLASS--------------

class Talaba {
  int? talabaID;
  String? talabaNomi;
  bool? talabaXolati;
  void darsQil() => print("Dars qilyapman");
  void uxla() => print("Uxlayapman");
  void showInfo() {
    print("""Talaba raqami: $talabaID 
Talaba ismi: $talabaNomi 
Talaba xolati: $talabaXolati """);
  }
}



