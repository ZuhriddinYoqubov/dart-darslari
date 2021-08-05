

main() {

  tashqari:
  while ( 1 < 2 ) {
    while (true) {
      if ( 1 == 1){
        print("While");
        break tashqari;
      }
    }
  }

  qosh();
  var son = qosh();
  print(son);
  print(hisobla(10,20));
  
  print(juftmi(9));
  print(findMax(8, 12));
  print("Ko'paytirilganda" + kopaytir(2,2).toString());
  print("Button xolati:" + button(true));
  int a = -5;
  print(a.toString() + ' soni '+ musbatMi(a));

  shaxarIsm("Toshkent", "Keles", "Samarqand");
  davlatKorsat("Ozbekiston");
  showName(a1: "Lutpilla");
  modelKorsat(m2: "Apple");
  print(soatKorsat());

  // EXEPTION-------------------------------------------------

  try {
    int natija = 10~/0;
    print("Natija: $natija");
  } on IntegerDivisionByZeroException {
    print("Nolga bo'lish mumkin emas !");
  }

  try {
    int natija = 10 ~/ 0;
    print("Natija: $natija");
  } catch (e) {
    print("XATO: $e");
  }

  try{
    print(addMoney(-10));
  }catch (e) {
    print("Error Bor: $e");
  }

}

//---------------------------------------

addMoney(int son) {
  if (son > 0){
    return son;
  }else{
    throw new ManfiyXatoExceptioni().xatonikorsat();
  }
}

class ManfiyXatoExceptioni implements Exception {
  String xatonikorsat() => "Negativ Son Kiritish Taqiqlanadi";
}























int qosh(){
  print("Qo'shish funksiyasi3");
  return 2;
}

double hisobla(double son, double son1){
  return(son + son1);
}

int findMax(int s1, int s2) {
  if(s1 < s2){
    return s2;
  }else{
    return s1;
  }
}

int maxFind(int s1, int s2) => (s1 >s2) ? s2 : s1;
musbatMi(son) => (son > 0)? 'Musbat son' : 'Musbat emas';
double kopaytir(double a, double b) => (a * b);
button(bool h) => (h) ? 'Bosildi' : 'Bosilmagan';
juftmi(int son) => (son % 2 == 0) ? 'Juft' : 'Toq son';

// REQUIRED PARAMETRS
void shaxarIsm(String s1, String s2, String s3){
  print("Shaxar 1 : $s1");
  print("Shaxar 2 : $s2");
  print("Shaxar 3 : $s3");
}

//OPTIONAL PARAMETERS
void davlatKorsat([String? a1, String? a2, String? a3]){
  print("Davlat 1 : $a1");
  print("Davlat 2 : $a2");
  print("Davlat 3 : $a3");
}

//NAMED OPTIONAL PARAMETERS
void showName({String? a1, String? a2}){
  print("Nomi 1 : $a1");
  print("Nomi 2 : $a2");
}

//Default optional named
void modelKorsat({String? m1 ="Nokia", String m2 = "Motorola"}){
  print("Model 1: $m1");
  print("Model 2: $m2");
}

String soatKorsat({String? time}) {
  return time ?? DateTime.now().toString();
}

