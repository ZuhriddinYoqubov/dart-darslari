main(List<String> args) {
  /*var son =1; // int
  son = 1.sqrt1_2
  dynamic son1 = 11;
  son1 = "Hello";*/

  dynamic name = "String";
  print(name);
  //List<String> ismlarim = List(); // ESKI USUL
  List<int> raqamlarim = List.filled(6, 1);
  raqamlarim[3] = 4;
  print(raqamlarim[3]);
  for (var item in raqamlarim) {
      print(item);
  }       
  try {
    raqamlarim[9] = 100; //ERROR          
  } catch (e) {
      print(e);
  }
  var xodimlar = [];
  //var listim = LIST(4); ESKI USUL
  List.generate(3, (index) {
    xodimlar.add(index);
  });
  print(xodimlar);

  var list = List.generate(4, (index){
  return "Index: $index";
  });
  print(list);

  var list2 = List.generate(4, (index) => "Index: $index");
  print(list2);

  List.generate(3, (index) => xodimlar.add(index));
  print(xodimlar);

  var list3 = List.generate(4, (index) => "Index: $index");
  list3.forEach((a) => print(a));

  var list4 = List.generate(4, (index) => index);
  list4.forEach((a) => print(a+1));
  
  var juftList = List.generate(10, (s) => s % 2 == 0 ? "Juft:$s": "Toq:$s");
  juftList.forEach((element) => print(element));
//-----------------------------------------------------------------

var list11 = List.filled(3, "Element", growable: true);
print(list11);
list11.add("Element - 4");
print(list11);

//DYNAMIC LENGHT
List<dynamic> name2 = [];
name2.add("value");
name2.add(11);
name2.add(true);
name2.add(44.5);
name2.forEach((element) =>print(element));

//name[4] = 34; //RANGE ERROR
print("Last element: ${name2[name2.length -1]}");
print(name2);

//name2.clear();
//print(name2);

name2.remove("value");
print(name2);

name2.removeAt(1);
print(name2);

name2.removeLast();
print(name2);

name2.insert(1, "element");
print(name2);
//------------------------------------

Set jadval = Set();
jadval.add("Ali");
jadval.add("Ali");
jadval.add("Ali");
jadval.add("Vali");
jadval.add("Gani");
jadval.add("Qani");
jadval.forEach((e)=> print(e));
jadval.remove("Ali");
jadval.forEach((e)=> print(e));

List lst1 = [11,22,33,44,55,66,55,44,55,55,55];
Set numers = Set.from(lst1);
numers.forEach((element)=> print(element));
print("---------------");
numers.clear();
List jufList = [2,1,2,2,2,3,2,3,2,2];
numers.addAll(jufList);
numers.forEach((element) => print(element));
//---------------------------------------------------------------------

// MAP -> LUGAT

Map<String, dynamic> dict = {"Hi": "Salom", "good": "Yaxshi", "One": 1,};

print(dict["Hi"]);
print(dict["good"]);
print(dict["One"]);

for (var i in dict.keys) {
  print(i);
}
for (var i in dict.values) {
  print(i);
}

dict.update("One", (value) => "$value.bir");
dict.addAll({"other": "Boshqa"});
dict.remove("One");
dict.removeWhere((key, value) => (key == "Hi") ? true: false);
dict.forEach((key, value) {
  print("Key: $key. Value: $value");
});




}