import 'package:flutter/material.dart';
import 'package:project/HomePage/body.dart';

void main() => runApp( MaterialApp(home: address()));

class address extends StatefulWidget {
  addressState createState() => addressState();
}

class addressState extends State<address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[50],
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                        padding: const EdgeInsets.only(top:30, bottom: 0, left: 0),
                        child: Center(child: Text('Add Home Address',style: TextStyle(fontSize: 20, color: Colors.grey[700],fontWeight: FontWeight.bold,)))
                  ),
                  SizedBox(height:12),
                  Divider(
                      height: 8,
                      thickness: 8,
                      color: Colors.teal[200],
                  ),
                  SizedBox(height:368),
                  Padding(
                      padding: const EdgeInsets.only(top:0, bottom: 0),
                      child: Text('Enter Your Details', style: TextStyle(fontSize: 20, color: Colors.grey[800],fontWeight: FontWeight.bold))
                  ),
                  SizedBox(height:20),
                  Padding(
                      padding: const EdgeInsets.only(bottom:0),
                      child: Stack(
                        children: <Widget> [
                          Padding(
                              padding: const EdgeInsets.only(top:0, bottom:0),
                              child: Image.asset('asset/images/img4.png')
                          ),
                          SizedBox(height: 10),
                          Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  child: TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      //autofocus: true,
                                      style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                                      decoration: InputDecoration(
                                        hintText: 'House Or Flat No/ Floor / Building*',
                                        fillColor: Colors.cyan[100],
                                        filled: true,
                                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(35.0),
                                          borderSide: BorderSide.none,
                                        ),
                                      )
                                  )
                              ),
                              SizedBox(height:20),
                              Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  child: TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      //autofocus: true,
                                      style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                                      decoration: InputDecoration(
                                        hintText: 'Address / Colony*',
                                        fillColor: Colors.cyan[100],
                                        filled: true,
                                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(35.0),
                                          borderSide: BorderSide.none,
                                        ),
                                      )
                                  )
                              ),
                              SizedBox(height:30),
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20,bottom:0),
                                child: ButtonTheme(
                                  minWidth: 120,
                                  height: 40,
                                  child: RaisedButton(
                                    textColor: Colors.white,
                                    color: Colors.teal[600],
                                    child: Text('Continue', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder:(context)=>HomePage(),) );
                                    },
                                    shape: new RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                  )
                ]
            )
        )
    );
  }
}