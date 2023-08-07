import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  final String email;
  final String name;
  final String user_name;
  final String phone;

  const User({
    required this.email,
    required this.name,
    required this.user_name,
    required this.phone,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      name: json['name'],
      user_name: json['username'], 
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'name': name,
      'username': user_name,
      'phone': phone,
    };
  }
}

class UserService {
  Future<List<User>> getUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final List<User> userList = [];

      for (var userJson in data) {
        userList.add(User.fromJson(userJson));
      }

      return userList;
    } else {
      throw Exception('HTTP Failed');
    }
  }

  Future<User> addUser(User newUser) async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(newUser.toJson()),
    );

    if (response.statusCode == 201) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to add user');
    }
  }
}

