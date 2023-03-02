import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kajuan/Screens/login.dart';
import 'package:kajuan/Services/auth.dart';
import 'package:kajuan/Utilities/constants.dart';
import 'package:kajuan/components/already_have_an_account_acheck.dart';
import 'package:kajuan/components/rounded_button.dart';
import 'package:kajuan/components/rounded_input_field.dart';
import 'package:kajuan/components/rounded_password_field.dart';

class Register extends StatefulWidget {
  
  // final Function toggleView;
  // Register({required this.toggleView});
  
  @override
 _RegisterState createState()=> _RegisterState();
}

class _RegisterState extends State<Register> {
 final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtPass = TextEditingController();
   final TextEditingController txtName = TextEditingController();
    final TextEditingController txtAdd = TextEditingController();
     final TextEditingController txtPhone = TextEditingController();
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

   @override
Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
       decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/kajuan-bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      width: double.infinity,
      height: size.height,
      child: SingleChildScrollView(        
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.15),                
                        Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.12,
            ),                 
            SizedBox(height: size.height * 0.02),
            RoundedInputField(
              icon: Icons.email_outlined,
              isEnable: true,
              controller: txtEmail,
              hintText: "Email",
              onChanged: (value) {},
            ),           
            RoundedPasswordField(             
              hintText: "Password",
              controller: txtPass,
              onChanged: (value) {},
            ), 
             RoundedInputField(
              icon: Icons.person,
              isEnable: true,
              controller: txtName,
              hintText: "Full Name",
              onChanged: (value) {},
            ),  
            RoundedInputField(
              icon: Icons.place,
              isEnable: true,
              controller: txtAdd,
              hintText: "Address",
              onChanged: (value) {},
            ),   
             RoundedInputField(
              icon: Icons.send_to_mobile,
              isEnable: true,
              controller: txtPhone,
              hintText: "Phone Number",
              onChanged: (value) {},
            ), 
            SizedBox(height: size.height * 0.03),      
            // Row(mainAxisAlignment: MainAxisAlignment.center, children: [GestureDetector(
            //   // onTap: () async { final Uri url = Uri(
            //   //         scheme: 'https',
            //   //         host:'mylastwords.life',
            //   //         path: '/terms-and-conditions',                      
            //   //       );
            //   //       await launchUrl(url); },
            //   child: Text(
            //     "Terms and Conditions",
            //     style: TextStyle(
            //       color: txtColorDark,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 16
            //     ),
            //   ),
            // ), Icon(Icons.arrow_forward_ios, size: 15, color: kPrimaryColor,),],),
            //  SizedBox(height: size.height * 0.02),
            // Row(mainAxisAlignment: MainAxisAlignment.center,children: [GestureDetector(
            //   // onTap: () async { final Uri url = Uri(
            //   //         scheme: 'https',
            //   //         host:'mylastwords.life',
            //   //         path: '/privacy-policy',                      
            //   //       );
            //   //       await launchUrl(url); },
            //   child: Text(
            //     "Privacy Policy",
            //     style: TextStyle(
            //       color: txtColorDark,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 16
            //     ),
            //   ),
            // ), Icon(Icons.arrow_forward_ios, size: 15, color: kPrimaryColor,),],),    
            // SizedBox(height: size.height * 0.03),                 
            RoundedButton(
              textColor: txtColorLight,
              bgcolor: txtColorDark,
              text: "SIGNUP",
              press: () {                
                validateSignup();
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),            
          ],
        ),
      ),
    ); 
  }

}