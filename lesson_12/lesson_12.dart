import 'dart:io';
import '../lesson_6/lesson_6.dart';
import 'report.dart';
import 'dart:isolate';

main(List<String> args) async {
  // -------asinxronga misol----
  
  // var report = Reporter();
  // report.getReportResult().then((value) => print("then: " + value.toString()));
  // var v = await report.getReportResult();
  // print(v);
  // var b = await report.getReportResult();
  // print(b);

  // Isolate bu bir qancha funksitalarni bir vaqtda iwlariw
  // -----------isolatega misollar-----------

  // Isolate.spawn(Xodim.maoshHisobla, "John");
  // Isolate.spawn(Xodim.vaqtHisobla, null);
  // Isolate.spawn(Xodim.tajribaHisobla, 12);

  // print("Ishlar tugadi !!!");
  // sleep(Duration(seconds: 1));

  // --------------strimga misollar------------- 
  
  var strim = calculate(10);
  var finish = await lookInsideStream(strim);
  print("Yakun: $finish byte");
}

  // --------------strimga misollar------------- 

Stream<num> calculate(num max) async*{
  for (var i = 0; i < max; i++) {
    // stdout.write("step ${i} -");
    yield i; // yield returnga o'xshab  lekin   forni sindirmay ishlaydi
  }
}

Future<num> lookInsideStream(Stream<num> stream) async {
  num sum = 0;
  await for (var value in stream) {
    print("$value byte");
    sum = value;    
  }
  return sum;
}

  //------------isolatega misollar---------------
class Xodim {
  static void maoshHisobla (var name) {
    print("$name uchun hisobotlar chiqarilmoqda");
    print("Hisobotlar tayyor !!!");
  }
  static void vaqtHisobla (var name) {
    print("$name uchun vaqtlar hisoblanmoqda");
    print("Vaqt uchun xisobotlar tayyor !!!");
  }
  static void tajribaHisobla (var name) {
    print("$name uchun tajriba ko'rilmoqda");
    print("Tajriba uchun hisobotlar tayyor !!!");
  }
}
