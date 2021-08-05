class HomePage {
  static String nom = "Ali";
  var _raqam;
  //default constructor 
  HomePage(this._raqam){
    print("Home pagedan obekt olindi !");
  }
  //setter for_raqam
  void set setRaqam(var r) => _raqam = r;

  // getter for _raqam
  get getRaqam => _raqam;

@override
  String toString() {
    return "toString metodi ishga tushdi !";
  }
}

class H extends HomePage {
  H(var ism) : super(ism);
}