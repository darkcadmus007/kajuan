import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kajuan/Screens/AdminDashboard.dart';
import 'package:kajuan/Screens/Dashboard.dart';
import 'package:kajuan/Screens/Home.dart';
import 'package:kajuan/Screens/Register.dart';
import 'package:kajuan/Utilities/constants.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../components/already_have_an_account_acheck.dart';
import '../components/rounded_button.dart';
import '../components/rounded_input_field.dart';
import '../components/rounded_password_field.dart';
import 'components/appleicon.dart';
import 'components/or_divider.dart';
import 'components/social_icon.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);
  
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
 final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtPass = TextEditingController();


   @override
  void initState() {    
    super.initState();
  }

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
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.05),            
            SizedBox(height: size.height * 0.02),
                        Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.12,
            ),                 
            SizedBox(height: size.height * 0.05),
            Text(
              "Sign in to access your Discount QR code",
              style: TextStyle(color: txtColorDark, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.02),
            RoundedInputField(
              icon: Icons.email_outlined,
              isEnable: true,
              controller: txtEmail,
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(           
              hintText: "Password",
              controller: txtPass,
              onChanged: (value) {},
            ),
             SizedBox(height: size.height * 0.01),
             GestureDetector(
              onTap: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return ForgotPassScreen();
                //     },
                //   ),
                // );
              },
              child: Text(
                "Forgot password?",
                style: TextStyle(
                  color: txtColorDark,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            RoundedButton(
                textColor: txtColorLight,
              bgcolor: txtColorDark,
              text: "LOGIN",
              press: () {   
                if(txtEmail.text=='admin'&&txtPass.text=='admin'){
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AdminDashboard();
                    },
                  ),
                );           
                }  
                else{
                   Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Dashboard();
                    },
                  ),
                );
                }              
               
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Register();
                    },
                  ),
                );
              },
            ),
              OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Material(elevation: 5.0, color: Colors.red),
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {
                    // _loginValidateFacebook();
                  },
                ),
                SocalIcon(
                  iconSrc: "assets/icons/gmail.svg",
                  press: () {
                    // gmailSignIn(); 
                  },
                ),
                 AppleIcon(
                  iconSrc: "assets/icons/apple.svg",
                  press: () { if(Platform.isIOS){
                    // ToastMessage().toastMsgDark('Under development');
                    //  appleSignIn();
                  }
                  else{
                    EasyLoading.showInfo('For IOS device only');
                  }
                  },
                ),
              ],
            )
          ],
        ),
          )
        ],
      ),
    );
  }
}
