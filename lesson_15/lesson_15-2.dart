main(List<String> args) async {
  
  var funk1 = (int s) async => s + 10;
  var funk2 = (int q) async => q + 40;
  var funk3 = (int z) async => Future.delayed(
        Duration(seconds: 2),
        () => z + 70);

  var value = 6;
  value = await funk1(10); //assignment
  value = await funk2(100); //assignment
  value = await funk3(1000); //assignment
  print(value);
  futureKirit();
}

void futureKirit(){
  Future((){
    var sum = 0;
    for (var i = 0; i < 500000000; i++) {
      sum ++;
    }
    return sum;
  }).then(print);
}
