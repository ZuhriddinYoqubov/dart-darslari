import 'dart:io';
main() {
  HttpServer.bind("10.10.13.95", 8080).then((HttpServer server) {
    print("Server ishlashga tayyor !");

    server.listen((HttpRequest request) { //ifconfig
      HttpResponse response = request.response;

      print("Bog'landi: ${request.connectionInfo!.remoteAddress.address}");

      response.headers.contentType = ContentType.html;

      response.write("""
      <h1 style="color:green;"> Serverdan Kelayotgan Ma'lumot</h1>
      <h3> IP: ${request.connectionInfo!.remoteAddress.address} </h3>
      """);
      response.close();
    });
  });  
}




















