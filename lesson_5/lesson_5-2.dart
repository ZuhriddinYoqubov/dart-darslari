
class Userm extends Object {
  int? _userId; // instance yoki field
  static int studentId = 1;
  Userm(this._userId){
    studentId += 1;
  }
  //---------SETTER va GETTER ----------------
  void set idAta(int raqam){
    if (raqam <= 0){
      this._userId = 1;
    }else{
      this._userId = raqam;
    }
  }
  String get idniOqi => "UserId: $_userId";
}