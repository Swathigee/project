import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/splash.dart';

void main() => runApp( MaterialApp(home: HomeScreen()));

class HomeScreen extends StatefulWidget {
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[50],
      // resizeToAvoidBottomInset: false,
      body: SplashScreen(),
    );
  }
}