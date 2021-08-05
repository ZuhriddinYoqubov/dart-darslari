//Oddiy sinf tanitish bilan boshlaymiz

class Player {

  //birinchi navbatda variable fieldlar kiritiladi

  int? id;
  String? nickname;
  int? level;
  
  // _orqali  field yozishimiz mumkin
  bool _online = false;

  //boshqa sahifadan _online vaYuqoridagi dasturda “_amount” nomli statik o’zgaruvchi e’lon qilindi va unga boshlang’ich qiymat sifatida 0 berildi. Har safar “Car” klassidan obyekt olinganida “_amount” o’zgaruvchisinig qiymadi +1 dan oshirib boriladi.riableni ko'rish uchun getter kiritamiz
  bool get onlineGetter => _online;

  //private fieldga qiymat berish uchun esa setter kiritamiz
  void set onlineSetter(var newValue) => _online = newValue;

  //Constructorlar kiritishni boshlasak bo'ladi.....

  //Default constructorda parametr kiritishning 1- usuli
  // Player(var id, var nickname, var level) {
  //   this.id = id;
  //   this.nickname =nickname;
  //   this.level = level;

  //Default constructorda parametr kiritishning 2- usuli
  Player(this.id, this.nickname, this.level);

  //Named constructor 
  Player.withoutID(this.nickname, this.level){
    print("Named constructordan obekt olindi");

  }
  // toString methodining ustidan yozilishi. @override bildiruvchisi orqali
  @override
  String toString() =>
    "Id: ${this.id}. Nickname: ${this.nickname}. Level: ${this.level}";

  //return qilmaydigan bir ikki function

  void setOnline() {
    if (!_online) _online =true;
    print("Status ok, Online");
  }
  void setOffline() {
    if (_online) _online = false;
      print("Status ok, Offline");
  }

  //string return qiladigan function
  String getStatus() => _online ? "Active": "NotActive";
}


main(List<String> args) {
  
  Player p1 = Player(1, "John", 12);
  Player p2 = Player.withoutID("Wick", 13);
  
  print(p1);
  print(p1.runtimeType);
  print(p2);

  p1.id = 14;
  print(p1);

  print(  p1.onlineGetter);
  p1.onlineSetter = true;
  print(  p1.onlineGetter);
  p1.setOffline();
  print(p1.getStatus());
  p1.setOnline();
  print(p1.getStatus());
}


