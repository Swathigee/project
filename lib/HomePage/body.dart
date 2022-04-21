import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/HomePage/BottomNavigationBar.dart';
import 'package:project/HomePage/DrawerScreen.dart';
import 'package:badges/badges.dart';
import 'package:project/HomePage/GridView.dart';
import 'package:project/Notification.dart';
import 'package:project/Mycart.dart';

void main() => runApp( MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<String> images =[
    'asset/images/Poster1.png',
    'asset/images/Poster1.png',
    'asset/images/Poster1.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.tealAccent),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        //leading: Icon(Icons.menu, color: Colors.tealAccent),
        title: Text('Vrindavan Farms', textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          SizedBox(width: 1),
          IconButton(
            icon: Icon(Icons.notifications_none_outlined, color: Colors.black),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>NotifyScreen(),)
              );
            },
          ),
          Badge(
            position: BadgePosition.topEnd(top: 3, end: 5),
            animationDuration: Duration(milliseconds: 300),
            animationType: BadgeAnimationType.slide,
            badgeColor: Colors.tealAccent,
            badgeContent: Text(
              '0',
              style: TextStyle(color: Colors.white),
            ),
            child: IconButton(
                icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>MyCartScreen(),)
                  );
                }),
          ),
        ],
      ),
      drawer: DrawerScreen(),
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
     child: Column(
            children: [
              Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(Icons.location_on_outlined, color:Colors.tealAccent),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Anna Nagar, Anna Nagar West', style: TextStyle(color:Colors.black54, fontSize: 13),),
                    )
                  ]
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 200,
                  width: 350,
                  child: PageView.builder(
                    itemCount: 3,
                    scrollDirection:Axis.horizontal,
                    pageSnapping: true,
                    itemBuilder: (context, pagePostion){
                      return Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset(images[pagePostion],),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top:5, right: 150),
                child: Text('Shop by Categories',style: TextStyle(color:Colors.black, fontSize: 18, fontWeight: FontWeight.bold))
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0, top: 10, bottom: 5),
                child: GridScreen(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15, top: 20),
                child: Image.asset('asset/images/Poster2.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15, top: 25, bottom: 20),
                child: Image.asset('asset/images/Poster3.png'),
              ),
            ]
        ),
      ),
      bottomNavigationBar: MyHomeBottomNavBar(),
    );
  }
}

