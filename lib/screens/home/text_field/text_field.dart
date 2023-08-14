import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class text_field extends StatefulWidget {
  const text_field({super.key});

  @override
  State<text_field> createState() => _text_fieldState();
}

class _text_fieldState extends State<text_field> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
       key: _formKey,
      child: Column(
           children: [
            Container(
              width: 300,
              child: TextField(
                
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