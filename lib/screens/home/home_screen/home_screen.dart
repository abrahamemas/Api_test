
import 'package:api_app/screens/home/text_field/text_field.dart';
import 'package:api_app/screens/home/user_profile/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home_screen extends StatefulWidget {

  home_screen({Key? key}) : super(key: key){
    
  }
  
  

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
           appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('API APP',
            style: GoogleFonts.nunito(
              color: Colors.white
            ),
            ),
            centerTitle: true,
            ),
           body: SingleChildScrollView(
             child: Column(
               children: [
                SizedBox(height: 30,),
                   user_profile(),
                SizedBox(height: 30,),
                text_field(),
                SizedBox(height: 30,),
                


                 
                  
           
           
           
                
               ],
             ),
           ),
    );
  }
}