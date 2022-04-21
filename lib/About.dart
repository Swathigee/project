import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(home: AboutScreen()));

class AboutScreen extends StatefulWidget {
  AboutScreenState createState() => AboutScreenState();
}

class AboutScreenState extends State<AboutScreen> {
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
          title: Text('About Us',textAlign: TextAlign.center, style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.w600 )),
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
                    padding: const EdgeInsets.only(top: 15),
                    child: Center(child: Image.asset('asset/images/logo2.png', width: 220, height: 170)),
                  ),
                  SizedBox(height:2),
                  Padding(
                      padding: const EdgeInsets.only(left:25, right: 25),
                      child: Container(
                          height: 450,
                          width: 360,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(25),),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 20.0,
                                )
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                                    child: Text('Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Pellentesque ipsum lorem, \nimperdiet et nisi vel, pharetra congue \njusto.  Praesent ac tempor arcu, quis \naccumsan lorem. Integer luctus leo et \ntempus venenatis. Donec quis nulla at \nmagna dignissim euismod. Suspendisse \naccumsan vel nisi vel semper.',
                                        textAlign: TextAlign.justify, style: TextStyle(color: Colors.grey, fontSize: 12, height: 2.0, letterSpacing: 1.0))
                                ),
                      Padding(
                          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                          child: Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.all(Radius.circular(25),),
                              ),
                           child: Padding(
                                  padding: const EdgeInsets.only(left: 20, top: 15),
                                  child: Text('Cancellation and Refund Policy', style: TextStyle(color: Colors.black, fontSize: 15))
                                ),
                          )
                      ),
                                Padding(
                                    padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                                    child: Container(
                                        height: 50,
                                        width: 300,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius: BorderRadius.all(Radius.circular(25),),
                                        ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20, top: 15),
                                        child: Text('Term of Use', style: TextStyle(color: Colors.black, fontSize:15)),
                                      )
                                    )
                                ),SizedBox(height: 15),
                                Padding(
                                    padding: const EdgeInsets.only( left: 15, right: 15),
                                    child: Container(
                                        height: 50,
                                        width: 300,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius: BorderRadius.all(Radius.circular(25),),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 20, top: 15),
                                          child: Text('Term of Use', style: TextStyle(color: Colors.black, fontSize:15)),
                                        )
                                    )
                                ),
                              ]
                          )
                      )
                  )
                ]
            )
        )
    );
  }
}