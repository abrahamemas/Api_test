
import 'package:api_app/screens/home/text_field/text_field.dart';
import 'package:api_app/screens/home/user_profile/user_profile.dart';
import 'package:api_app/screens/utils/user_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class home_screen extends StatelessWidget {

  home_screen({Key? key}) : super(key: key){
    loadUser();
  }
  loadUser() async{
    final results = await UserService().getUsers();
    print(results);
  }
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