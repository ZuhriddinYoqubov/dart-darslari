import 'dart:math';
main(List<String> args) async{
  
  List numbers = [2,4,12,54,21,3,12,54,1];
/*
  for (var item in numbers) {
    print("Natija: ${sqrt(item)}");
  }

  print("-------------------");

  print(numbers.skip(3));
  print(numbers.skip(3).take(3));
  print(numbers.skip(3).take(3).map((e) => (e+1)));
  print("-------------------");

  //nomsiz funksiya
  var sum = (a, b) => a+b;
  print(sum(10, 20));

  int value = 0;

  var a = (List<String> lst ) =>
          lst.forEach((element) => print(value = value + element.length));

  a(["161", "121"]);        // 3,6

  num findCharCount(List<String> names) =>
      names.map((name) => name.length).fold(0, (prevValue, element) => prevValue+element);

  print(findCharCount(["aa","bbb","cccc"])); //9

  List<int> lst1 = [11,22,33,44];  // 110
  print(returnSum(lst1));

*/

  // ASINXRON VA SINXRON ISHLASH
  // dart sixron ishlaydigan til lekin uni asinxron ishlatsa bo'ladi
  // yani sinxron ishlaganda 1 sekundda ishlaydigan satr 10 sekundda  
  // ishlaydigan satrdan pasda yozilgan bo'lsa ham undan oldin ishlaydi
  // asinxronda esa satrlar bir birini kutadi

  // syncIshla();    // sinxron ishga misol
  // asyncIshla();   // asinxron ishga misol

  var video =  downloadVideo();       // sinxron ishga misol
  print(video);

  // var video2 = await downloadVideo(); // asinxron ishga misol
  // print(video2);

}

void syncIshla() {
  Future.delayed(  
    Duration(seconds: 3),
    () => print("Video is downloaded !")
  );

  print("Video,mp4");
}

void asyncIshla() async{
  await Future.delayed(
    Duration(seconds: 3),
    () => print("Video is downloaded !")
  );

  print("Video,mp4");
}

Future<String> downloadVideo() {
  return Future.delayed(
    Duration(seconds: 3),
    () => "Video dovnload bo'ldi !",
  );
}

int returnSum(List<int> lst) {
  int value = 0;
  for (var item in lst) {
    value += item;
  }
  return value;
}