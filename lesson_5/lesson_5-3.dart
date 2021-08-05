import 'lesson_5-2.dart';

main() {
  var u1 = Userm(12);
  print(u1.idniOqi); //use getter

  u1.idAta = 3; //use setter
  print(u1.idniOqi);
  
  print(Userm.studentId);

  var u2 = Userm(0);
  print(Userm.studentId);

  var u3 = Userm(0);
  print(Userm.studentId);
}