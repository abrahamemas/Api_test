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
  Future<int> getUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return data.length; 
    } else {
      throw Exception('HTTP Failed');
    }
  }
}
