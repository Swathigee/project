import 'package:flutter/material.dart';
import 'package:project/address.dart';

void main() => runApp( MaterialApp(home: SignUp()));

class SignUp extends StatefulWidget {
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top:0, bottom: 0),
                    child: Image.asset('asset/images/img5.jpeg')
                ),
        Padding(
          padding: const EdgeInsets.only(top:0, bottom: 0),
                child:Container(
                  height: 15,
                  width: 400,
                  color: Colors.teal[600],
                ),
        ),
       /*Divider(
                height: 60,
                thickness: 15,
                color: Colors.teal[800],
            ),*/
                SizedBox(height:15),
                Padding(
                    padding: const EdgeInsets.only(top:0, bottom:0),
                      child: Text('Fresh Dairy And Grocery \nProducts At Your Door Steps', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.teal[800]),textAlign: TextAlign.center,)
                ),
                SizedBox(height:10),
                Padding(
                    padding: const EdgeInsets.only(top:0, bottom: 0),
                    child: Text('Enter Your Details', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600))
                ),
                SizedBox(height:15),
                Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                        keyboardType: TextInputType.text,
                        //autofocus: true,
                        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                        decoration: InputDecoration(
                            hintText: 'Enter Your Name',
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35.0),
                            borderSide: BorderSide.none,
                          ),
                        )
                    )
                ),
                SizedBox(height:15),
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
                                    padding: const EdgeInsets.only(left: 20, right: 20, top: 13),
                                    child: TextFormField(
                                        keyboardType: TextInputType.emailAddress,
                                        //autofocus: true,
                                        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                                        decoration: InputDecoration(
                                            hintText: 'Enter Your Email',
                                            fillColor: Colors.white,
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
                                  child: Text('Sign Up', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder:(context)=>address(),) );
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
              ],
            )
        )
            );
  }
}
