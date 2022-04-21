import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(home: ContactScreen()));

class ContactScreen extends StatefulWidget {
  ContactScreenState createState() => ContactScreenState();
}

class ContactScreenState extends State<ContactScreen> {
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
        title: Text('Contact Us',textAlign: TextAlign.center, style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.w600 )),
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
               height: 360,
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
                     padding: const EdgeInsets.only(top: 20, left:15, right: 10),
                     child: Text('Pellentesque ipsum lorem, imperdiet et \nnisi vel, pharetra congue justo. Praesent \nac tempor arcu, quis accumsan lorem. \ninteger luctus leo.',textAlign: TextAlign.justify, style: TextStyle(color: Colors.grey, fontSize: 12, height:2.0, letterSpacing: 1.6))
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
                     child: Container(
                       height: 50,
                       width: 300,
                         decoration: BoxDecoration(
                           color: Colors.grey[200],
                           borderRadius: BorderRadius.all(Radius.circular(25),),
                     ),
                       child: Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 15),
                             child: Icon(Icons.wifi_calling_rounded,color: Colors.teal),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 8),
                             child: Text('Call Us',style: TextStyle(color: Colors.black54, fontSize: 15))
                           )
                         ]
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
                           child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 15),
                                   child: Icon(Icons.chat,color: Colors.teal),
                                 ),
                                 Padding(
                                     padding: const EdgeInsets.only(left: 8),
                                     child: Text('Chat with Us',style: TextStyle(color: Colors.black54, fontSize: 15))
                                 )
                               ]
                           )
                       )
                   ),SizedBox(height: 15),
                   Padding(
                       padding: const EdgeInsets.only(left: 15, right: 15),
                       child: Container(
                           height: 50,
                           width: 300,
                           decoration: BoxDecoration(
                             color: Colors.grey[200],
                             borderRadius: BorderRadius.all(Radius.circular(25),),
                           ),
                           child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 15),
                                   child: Icon(Icons.email_rounded,color: Colors.teal),
                                 ),
                                 Padding(
                                     padding: const EdgeInsets.only(left: 8),
                                     child: Text('Mail Us',style: TextStyle(color: Colors.black54, fontSize: 15))
                                 )
                               ]
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