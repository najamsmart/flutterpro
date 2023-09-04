import 'dart:convert';

import 'package:flutter_application_2/pages/sew.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';



class UserApi {
  //Get all User Details
  Future<List<User>?> getAllUsers() async {
    var client = http.Client();
    //http://127.0.0.1:5000/user
    var uri = Uri.parse("http://10.0.2.2:5000/user");
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return userFromJson(json);
    }
  }

  //Add New User
  // Future<User> addUser(String date,String description, String student_id,String title, ) async {
  //   var client = http.Client();
  //   var uri = Uri.parse("https://dev.iec.org.pk/api/add_task");
  //   final http.Response response = await client.post(
  //     uri,
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(<String, dynamic>{'date': date, 'description': description,  'student_id': dataa['user_id'],'title': title}),
  //   );
  //   if (response.statusCode == 200) {
  //     var json = response.body;
  //     return User.fromJson(jsonDecode(json));
  //   } else {
  //     throw Exception('Failed to Save User.');
  //   }
  // }

  //Delete User
  Future<User> deleteUSer(int id) async {
    var client = http.Client();
    var uri = Uri.parse("http://10.0.2.2:5000/user/$id");
    final http.Response response =
    await client.delete(uri, headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });
    if (response.statusCode == 200) {
      var json = response.body;
      return User.fromJson(jsonDecode(json));
    } else {
      throw Exception('Failed to Delete User.');
    }
  }

  //Update User
  Future<User> updateUser(String name, String contact, int id) async {
    var client = http.Client();
    var uri = Uri.parse("http://10.0.2.2:5000/user/$id");
    final http.Response response = await client.put(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{'name': name, 'contact': contact}),
    );
    if (response.statusCode == 200) {
      var json = response.body;
      return User.fromJson(jsonDecode(json));
    } else {
      throw Exception('Failed to Update User.');
    }
  }


}

