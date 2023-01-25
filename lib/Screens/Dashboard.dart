import 'package:flutter/material.dart';
import 'package:kajuan/Screens/Home.dart';
import 'package:kajuan/Screens/qr.dart';
import 'package:kajuan/Utilities/constants.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({
    Key? key,
  }) : super(key: key);
  
  @override
  _DashboardState createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  //list of widgets to call ontap
  final widgetOptions = [
    const Home(),  
     const QRScreen(), 
      const Home(), 
       const Home(), 
  ];
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];


   @override
  void initState() {    
    super.initState();
  }
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(     
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: txtColorRed),             
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 255, 174, 168),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code,color: txtColorRed,),
            label: 'QR',
            backgroundColor: Color.fromARGB(255, 185, 255, 188),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: txtColorRed),
            label: 'Profile',
            backgroundColor: Color.fromARGB(255, 205, 187, 255),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: txtColorRed),
            label: 'Settings',
            backgroundColor: Color.fromARGB(255, 202, 247, 255),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 7, 4, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
