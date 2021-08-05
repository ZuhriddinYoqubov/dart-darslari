// Class Abstract
abstract class MarkaziyBank {
  void publish(){
    print("Markaziy bank dollar kursi: 10.000 som");
  }  
}

//Class concrete
class Agrobank extends MarkaziyBank {
  @override
  void publish() {
    super.publish();
    print("Agrobank dollar kursi: 11.000 som");
  }
}

//Class concrete
class Ipotekabank extends MarkaziyBank {
  @override
  void publish() {
    super.publish();
    print("Ipoteka bank dollar kursi: 10.500 som");
  }
}

//Class concrete
class Kapitalbank extends MarkaziyBank {
  @override
  void publish() {
    super.publish();
    print("Kapitalbank dollar kursi: 11.000 som");
  }
}

// FActory class
abstract class MarkaziyBankHisobot {
  MarkaziyBank HisobotKirit();
}

class AgroBankHisobot extends MarkaziyBankHisobot {
  HisobotKirit(){
    return Agrobank();
  }
}

class IpotekaBankHisobot extends MarkaziyBankHisobot {
  HisobotKirit(){
    return Ipotekabank();
  }
}

class KapitalBankHisobot extends MarkaziyBankHisobot {
  HisobotKirit(){
    return Kapitalbank();
  }
}
