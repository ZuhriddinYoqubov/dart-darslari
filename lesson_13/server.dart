import 'dart:io';
import 'index.dart';

main(List<String> args) {

/*
  HttpServer.bind("10.10.13.95", 2020).then((server) {
    print("Server ishga tushdi !");
    //Clientning istaklari uchun HttpRequest
    server.listen((HttpRequest req) {
      // Serverning Javoblari uchun HttpResponse
      HttpResponse res = req.response; //requestga qaytariladigan javob
      Uri url = req.uri; // User request jo'natgan url nomi
      print("URL SHU: ${url}");
      res.headers.contentType = ContentType.html;
      if (url.toString() == "/") {
        res.write("<h1> Home Page </h1>");
      }else if (url.toString() == "/news") {
        res.write("<h1> News Page </h1>");
      }else if (url.toString() == "/contact") {
        res.write("<h1> Contact Page </h1>");
      }else{
        res.write("""<h1 style="color:red;"> Page Not Found ! 404 </h1>""");
      }
      res.close();
    });
  });
*/

// SERVER BILAN HTML VA CSS BOG'LASHGA NAMUNA:

  HttpServer.bind("10.10.13.95", 8080).then((HttpServer server) {
    print("Server ishlashga tayyor !");

    server.listen((HttpRequest request) { //ifconfig
      HttpResponse response = request.response;

      print("Bog'landi: ${request.connectionInfo!.remoteAddress.address}");

      response.headers.contentType = ContentType.html;

      response.write(html);
      response.close();
    });
  });
}