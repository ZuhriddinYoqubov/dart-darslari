import 'dart:convert';
import 'dart:io';
main(List<String> args) {

  // [
  //   {
  //     "id": 1,
  //     "color": "blue",
  //     "size": "12.4"
  //   },
  //   {
  //     "id": 2,
  //     "color": "RED",
  //     "size": "15.1"
  //   },  
  //   {
  //     "id": 1,
  //     "color": "yellow",
  //     "size": "13.6"
  //   } 
  // ]  
  var animal_json = '''
[
  {
    "name": "Meowsy",
    "species" : "cat",
    "foods": {
      "likes": ["tuna", "catnip"],
      "dislikes": ["ham", "zucchini"]
    }
  },
  {
    "name": "Barky",
    "species" : "dog",
    "foods": {
      "likes": ["bones", "carrots"],
      "dislikes": ["tuna"]
    }
  },
  {
    "name": "Purrpaws",
    "species" : "cat",
    "foods": {
      "likes": ["mice"],
      "dislikes": ["cookies"]
    }
  }
]
  ''';
  var animals = jsonDecode(animal_json);

  for (var a in animals) {
    print(a['name']);
    print(a['species']);

    var foods = a['foods'];
    foods.forEach((k, v) {
      stdout.write("$k: ");
      for (var i in v) {
        stdout.write("$i, ");
        print("");
      }
    });
    print("");
  }
}