import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class user_profile extends StatefulWidget {
  const user_profile({super.key});

  @override
  State<user_profile> createState() => _user_profileState();
}

class _user_profileState extends State<user_profile> {
  File? image;

 Future<void> pickImage() async {
  try {
    final pickedImage = await ImagePicker().getImage(source: ImageSource.gallery);

    if (pickedImage == null) {
      print('No image picked');
      return;
    }

    final imageTemporary = File(pickedImage.path);
    setState(() {
      image = imageTemporary;
    });
  } catch (e) {
    print('Failed to pick image: $e');
  }
}

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: pickImage,
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