import 'dart:io';

import 'package:flutter/material.dart';

class user_profile extends StatefulWidget {
  const user_profile({super.key});

  @override
  State<user_profile> createState() => _user_profileState();
}

class _user_profileState extends State<user_profile> {
  File? image;
  






  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      
      child: Center(
        child: Container(
         width: 165,
         height: 165,
         decoration: BoxDecoration(
           shape: BoxShape.circle
         ),
         child: ClipOval(
          child: image != null
          ? Image.file(
             image!,
             fit:BoxFit.cover,
          )
          :
           Icon(
          Icons.account_circle, 
          size: 165,
        ),
         ),
        ),
      ),
    );
  }
}