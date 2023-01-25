import 'package:flutter/widgets.dart';
import 'package:kajuan/Utilities/constants.dart';

class Welcome extends StatefulWidget {
  const Welcome({
    Key? key,
  }) : super(key: key);
  
  @override
  _WelcomeState createState() => _WelcomeState();
}
class _WelcomeState extends State<Welcome> {


   @override
  void initState() {    
    super.initState();
  }

    @override
Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: lightBackground,
      width: double.infinity,
      height: size.height,
      child: Stack(),
    );
  }
}