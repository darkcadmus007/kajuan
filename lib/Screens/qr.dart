import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kajuan/Utilities/constants.dart';

class QRScreen extends StatefulWidget {
  const QRScreen({
    Key? key,
  }) : super(key: key);
  
  @override
  _QRScreenState createState() => _QRScreenState();
}
class _QRScreenState extends State<QRScreen> {


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
            SizedBox(height: size.height * 0.02),
                        Image.asset(
              "assets/images/qr.png",
              height: size.height * .4,
            ),                       
            Text(
              "Leonardo De Caprio",
              style: TextStyle(color: txtColorRed, fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
              SizedBox(height: size.height * 0.015), 
            Text(
              "0949*****75",
              style: TextStyle(color: txtColorDark, fontSize: 18, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.02),          
          ],
        ),
          )
        ],
      ),
    );
  }
}