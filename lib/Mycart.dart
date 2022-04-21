import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(home: MyCartScreen()));

class MyCartScreen extends StatefulWidget {
MyCartScreenState createState() => MyCartScreenState();
}

class MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          leading: IconButton(icon:Icon(Icons.arrow_back_outlined, color: Colors.teal),
              onPressed: () {
            Navigator.pop(context);
              },),
          backgroundColor: Colors.grey[300],
          centerTitle: true,
          title: Text('My Cart', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
          shape: Border(
              bottom: BorderSide(
                color: Colors.teal,
                width: 2,
              )
          ),
          elevation: 2,
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 160),
                    child: Center(child: Image.asset(
                        'asset/images/cart.png', width: 180, height: 160)),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Center(child: Text('No items in your cart', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400)),)
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Center(
                          child: Text('Your favourite items are just a click away',style: TextStyle(color:Colors.grey, fontSize: 12,))
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 40, right: 20,bottom:0, top: 10),
                      child: ButtonTheme(
                        minWidth: 150,
                        height: 40,
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.teal[600],
                          child: Text('Start Ordering', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          onPressed: (){},
                          shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),),
                      ) )
                ]
            )
        )
    );
  }
}