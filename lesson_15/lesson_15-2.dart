main(List<String> args) async {
  /*
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
  */

videodownload();

}
void videodownload() async{
  var video = new Future.value('100 mb').then((v1) {
    Future.delayed(Duration(seconds: 1), () => print(v1)); 
    return new Future.value('$v1 200 mb').then((v2) {
      Future.delayed(Duration(seconds: 2), () => print(v2));
      return new Future.value('$v2 300 mb').then((v3) {
        Future.delayed(Duration(seconds: 3), () => print(v3));
        return new Future.value('$v3 400 mb');
      });
    });
  });
  video.then((value) => print("Video yuklandi: $value"));
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
