import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/user_service.dart';
import '../home_screen/new_screen/new_screen.dart';



class text_field extends StatefulWidget {
  const text_field({super.key});

  @override
  State<text_field> createState() => _text_fieldState();
}

class _text_fieldState extends State<text_field> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
       key: _formKey,
      child: Column(
           children: [
            Container(
              width: 300,
              child: TextField(
                controller:  _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: GoogleFonts.nunito(
                                        color: Colors.grey,
                                        fontSize: 12,
                                         fontWeight: FontWeight.w400,
                                         ),
                  
            
                ),
              ),
            ),
            SizedBox(height: 30,),
                Container(
                  width: 300,
                  child: TextField(
                   controller: _nameController,
                   
                  decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: GoogleFonts.nunito(
                                        color: Colors.grey,
                                        fontSize: 12,
                                         fontWeight: FontWeight.w400,
                                         ),

                            ),
                
                          ),
                ),
              SizedBox(height: 30,),
                Container(
                  width: 300,
                  child: TextField(
                    
                controller: _userNameController,
                            decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: GoogleFonts.nunito(
                                        color: Colors.grey,
                                        fontSize: 12,
                                         fontWeight: FontWeight.w400,
                                         ),
                   
                
                            ),
                          ),
                ),
              SizedBox(height: 30,),
                Container(
                  width: 300,
                  child: TextField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                  labelText: 'Phone',
                  labelStyle: GoogleFonts.nunito(
                                        color: Colors.grey,
                                        fontSize: 12,
                                         fontWeight: FontWeight.w400,
                                         ),
    
                
                            ),
                          ),
                ),
               SizedBox(height: 50,),
                Container(
      child:  Center(
        child: ElevatedButton(
          onPressed: () async {
            
            User newUser = User(
              email: _emailController.text,
              name: _nameController.text,
              user_name: _userNameController.text,
              phone: _phoneController.text,
            );

            // Add the new user
            await UserService().addUser(newUser);

            // Navigate to the new screen with the updated user list
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => new_screen(user: newUser)),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            onPrimary: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Text('Sign In'),
        ),
      ),
    ),
                


           ],
      ),
    );
  }
}