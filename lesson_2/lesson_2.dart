
main() {
  // 2-dars. if, else if, else

  int n1 = 120;
  int n2 = 120;

  if (n1 > n2)
    print("$n1 $n2 dan katta");
  else if (n2 > n1)
    print("$n2 $n1 dan katta");
  else
    print("Teng");

  print("***************");

  int? ball;
  ball = 99;

  if (ball > 100)
    print("GRANT!");
  else if (ball >= 80 && ball <= 100)
    print("5");
  else if (ball >= 60 && ball < 80)
    print("4");
  else if (ball >= 40 && ball < 60)
    print("3");
  else
    print("FAILED!");

  print("********* Ternory if *********");

  int num1 = 50;
  var num2 = 45;
  var small;

  (num1 < num2) ? small = num1 : small = num2;
  print("Small number is: $small");

  small = num1 < num2 ? num1 : num2;
  print(small);

  String? name;
  String lastname = "Wick";
  String message;
  message = name ?? lastname;
  print("Hello, $message!");

  String? aa;
  aa != null ? print(aa) : print("null");

  // SWITCH

  int number = 12;

  switch (number) {
    case 1:
      print("Bir");
      break;

    case 2:
      print("Ikki");
      break;

    case 3:
      print("Uch");
      break;

    case 4:
      print("To'rt");
      break;

    case 5:
      print("Besh");
      break;

    case 6:
      print("Yetti");
      break;

    case 8:
      print("Sakkiz");
      break;

    case 9:
      print("To'qqiz");
      break;

    case 10:
      print("O'n");
      break;

    case 11:
      print("On' bir");
      break;

    case 12:
      print("O'n ikki");
      break;

    case 13:
      print("O'n uch");
      break;

    case 14:
      print("O'n to;rt");
      break;

    case 15:
      print("O'n besh");
      break;

    case 16:
      print("O'n olti");
      break;

    case 17:
      print("O'n yetti");
      break;

    case 18:
      print("O'n sakkiz");
      break;

    case 19:
      print("O'n to'qqiz");
      break;

    case 20:
      print("Yigirma");
      break;

    default:
      print("Boshqa son");
      break;
  }

  // stdout.write("Hello");

  int result = (21 / 10).toInt();

  switch (result) {
    case 3:
      print("O'ttizdan katta yoki teng!");
      break;

    case 2:
      print("Yigirmada katta yoki teng!");
      break;

    case 1:
      print("O'ndan katta yoki teng!");
      break;

    default:
      print("Boshqa son");
  }

  int x = 10, y, z = 0;
  y = x++;
  z = ++y + ++x;
  print("$z, ${++y}, $z");

  String name12 = "John";
  String name13 = "Jon";

  if (name12 != name13)
    print("Name does'nt equal");
  else
    print("Name equals");

  print("${true && false}, ${1 * 0}");
  print("${false && true}, ${0 * 1}");
  print("${false && false}, ${0 * 0}");
  print("${true && true}, ${1 * 1}");

  print("${true || false}, ${1 + 0}");
  print("${false || true}, ${0 + 1}");
  print("${false || false}, ${0 + 0}");
  print("${true || true}, ${1 + 1}");

  print(!true);

// Loop
  for (int i = 0; i < 10; i++) if (i % 2 == 0) print(i);

  int sanoq = 0;
  while (sanoq < 10) {
    print(sanoq);
    sanoq++;
  }

  List l = ["Hello", "World"];
  for (var item in l) {
    print(item);
  }

  bigBro:
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      print("Hello");
      if (j == 5) {
        print("---BREAK---");
        break bigBro;
      }
    }
  }
}
