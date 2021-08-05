import 'dart:io';

main() {

  var bir = Bir2();
  var ikki = Uch45();
  var uch = Olti789();

  bir.print1();
  ikki.print1();
  uch.print1();

  bir.print2();
  ikki.print2();
  uch.print2();
}

class Bir2 {
  int x = 1;
  int y = 2;

  void print1() {
    stdout.write("$x, $y, ");
  }
  void print2() {
    stdout.write("$x, $y, ");
  }

}

class Uch45 {
  int x = 3, y = 4, z = 5;
  void print1() {
    stdout.write("$x, $y, $z, ");
  }void print2() {
    stdout.write("$x, $y,");
  }


}

class Olti789 {
  int x = 6, y = 7, z = 8, k = 9;
  void print1() {
    print("$x, $y, $z, $k  ");
  }
  void print2() {
    stdout.write("$x, $y,");
  }

}