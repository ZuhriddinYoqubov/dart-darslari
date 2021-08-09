import 'dart:io';

import 'package:rest_api/rest_api.dart';

class UserController extends ResourceController{
  final _users = [
    {
      "zeus": "user1",
      "id": 0,
      "profilImage":"https://images.unsplash.com/photo-1628038341191-8e7448fc8209?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80"
    },
    {
      "Zabi": "user2",
      "id": 1,
      "profilImage":"https://images.unsplash.com/photo-1628038341191-8e7448fc8209?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80"
    },
    {
      "Azamat": "user3",
      "id": 3,
      "profilImage":"https://images.unsplash.com/photo-1628038341191-8e7448fc8209?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80"
    },
  ];




  @Operation.get()
  Future<Response> getAllUsers() async {
    return Response.ok(_users);
  }
  @Operation.get('id')
  Future<Response> getUserById(@Bind.path('id') int id) async {
    return Response.ok(_users[id]);
  }
  @Operation.post()
  Future<Response> postAllUsers() async {
    return Response.ok({
      "name": "newUser",
      "id": 4,
      "profilImage": "saddsadasd"
    });
  }
  @Operation.put()
  Future<Response> updateAllusers() async {
    return Response.ok("Put metodi ishga tushdi")..contentType = ContentType.text;
  }
  @Operation.delete()
  Future<Response> deleteAllusers() async {
    return Response.ok("Delete metodi ishga tushdi");
  }
}