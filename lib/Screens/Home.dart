import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kajuan/Screens/ProductDetail.dart';
import 'package:kajuan/Utilities/constants.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);
  
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {


   @override
  void initState() {    
    super.initState();
  }

    @override
Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
 
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,        
        title: Text('Products',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Ube Reine', 'Php 100', 'assets/images/cake1.jpg',
                      false, false, context),
                  _buildCard('Sucree Blueberry', 'Php 100', 'assets/images/cake2.jpg',
                      true, false, context),
                  _buildCard('Almond Roi', 'Php 100',
                      'assets/images/cake3.jpg', false, true, context),
                  _buildCard('Cookies and Cream', 'Php 100', 'assets/images/cake4.jpg',
                      false, false, context),
                         _buildCard('Brava Manguier', 'Php 100', 'assets/images/cake5.jpg',
                      false, false, context),
                         _buildCard('Matcha Creme', 'Php 100', 'assets/images/cake6.jpg',
                      false, false, context)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProductDetail(
                    assetPath: imgPath,
                    cookieprice:price,
                    cookiename: name
                  )));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isFavorite
                                ? const Icon(Icons.favorite, color: kPrimaryColor)
                                : Icon(Icons.favorite_border,
                                    color: kPrimaryColor)
                          ])),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(                            
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 7.0),
                  Text(price,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Text(name,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (!added) ...[
                              Icon(Icons.shopping_basket,
                                  color: kPrimaryColor, size: 12.0),
                              Text('Add to cart',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: kPrimaryColor,
                                      fontSize: 12.0))
                            ],
                            if (added) ...[
                              Icon(Icons.remove_circle_outline,
                                  color: kPrimaryColor, size: 12.0),
                              Text('3',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0)),
                              Icon(Icons.add_circle_outline,
                                  color: kPrimaryColor, size: 12.0),
                            ]
                          ]))
                ]))));
  }
}