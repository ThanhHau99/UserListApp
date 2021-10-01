import 'dart:convert';

import 'package:app_list_user/models/user.dart';
import 'package:http/http.dart' as http;

class Network {
  Future<List<User>> loadData() async {
    List<User> dataUser = [];
    var url = Uri.https("jsonplaceholder.typicode.com", "/users");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print("success");
      var jsonUsers = jsonDecode(response.body);

      for (var user in jsonUsers) {
        var data = User.fromJson(user);
        dataUser.add(data);
      }
      return dataUser;
    } else {
      print("error");
    }
    return dataUser;
  }
}
