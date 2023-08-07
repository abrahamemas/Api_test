import 'package:flutter/material.dart';

import '../../../utils/user_service.dart'; // Replace with the correct path to your add_user_screen.dart file

class botton extends StatelessWidget {
  final User user;

  botton({required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<User>>(
        future: UserService().getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final userList = snapshot.data;
            return ListView.builder(
              itemCount: userList?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(userList![index].name),
                  subtitle: Text(userList[index].email),
                  // Add other user details here as needed
                );
              },
            );
          }
        },
      ),
    );
  }
}

