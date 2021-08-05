import 'lesson_10.dart';

main(List<String> args) {
  
  var option = args[0];

  MarkaziyBankHisobot? hisobot;

  switch (option) {
    case('a'):
      hisobot = AgroBankHisobot();
      break;
    case('i'):
      hisobot = IpotekaBankHisobot();
      break;
    case('k'):
      hisobot = KapitalBankHisobot();
      break;
    default:
      print("Wrong Path !");
      break;
  }

var malumotBer = hisobot!.HisobotKirit();

try {
  malumotBer.publish();
} catch (e) {
  print("Argument kiritilishi shart !");
}
}