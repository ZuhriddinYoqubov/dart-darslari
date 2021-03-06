import 'dart:io';

File htmlFile = File("index.html");
main(List<String> args) async {
  Stream<HttpRequest> server;
  try {
    server = await HttpServer.bind(InternetAddress.anyIPv4, 8080);  
  } catch (e) {
    print("Xato: $e");
    exit(-1);
  }

  await for (HttpRequest request in server) {
    if (await htmlFile.exists()) {
      print("File Exist in: ${htmlFile.path} !");
      request.response.headers.contentType = ContentType.html;
      try {
        await request.response.addStream(htmlFile.openRead());
      } catch (e) {
        print("Xato $e");
      }      
    }else{
      print("Html Page Not Found !");
      request.response.statusCode = HttpStatus.notFound;
    }
  await request.response.close();
  } 
}