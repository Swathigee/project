import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(home: NotifyScreen()));

class NotifyScreen extends StatefulWidget {
  NotifyScreenState createState() => NotifyScreenState();
}

class NotifyScreenState extends State<NotifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          leading:IconButton(icon:Icon(Icons.arrow_back_outlined, color: Colors.teal),
            onPressed: () {
              Navigator.pop(context);
            },),
          backgroundColor: Colors.grey[300],
          centerTitle: true,
          title: Text('Notification', textAlign: TextAlign.center,
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
                    padding: const EdgeInsets.only(top: 150),
                    child: Center(child: Image.asset(
                        'asset/images/notification.png', width: 180, height: 160)),
                  ),
        Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Center(child: Text('Nothing in here right now!', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500)),)
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Center(
            child: Text('Well let you know when we have \n       something for you here.',style: TextStyle(color:Colors.grey, fontSize: 12,))
        )
        )
            ]
            )
        )
    );
  }
}