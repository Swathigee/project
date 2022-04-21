import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(home: BillHistoryScreen()));

class BillHistoryScreen extends StatefulWidget {
  BillHistoryScreenState createState() => BillHistoryScreenState();
}

class BillHistoryScreenState extends State<BillHistoryScreen> {
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
          title: Text('Billing History', textAlign: TextAlign.center,
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
                        'asset/images/history.png', width: 180, height: 150)),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(child: Text('No Transactions Yet', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500)),)
                  ),
                ]
            )
        )
    );
  }
}