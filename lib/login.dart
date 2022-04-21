import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/otp.dart';

void main() => runApp( MaterialApp(home: login()));

class login extends StatefulWidget {
  loginState createState() => loginState();
}

class loginState extends State<login> {

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
                    child: Image.asset('asset/images/img1.jpeg')
                ),
                Container(
              height: 15,
                width: 400,
              color: Colors.teal[600],
            ),
           /*Divider(
                height: 60,
                thickness: 15,
                color: Colors.teal
            ),*/
                SizedBox(height:20),
                Padding(
                    padding: const EdgeInsets.only(top:0, bottom:0),
                    child: Text('Login', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.teal[800]))
                ),
                SizedBox(height:8),
                Padding(
                    padding: const EdgeInsets.only(top:0, bottom: 0),
                    child: Text('Enter your phone number to proceed', style: TextStyle(fontSize: 15, color: Colors.black))
                ),
                SizedBox(height:15),
                Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        //autofocus: true,
                        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                        decoration: InputDecoration(
                          hintText: '10 Digit Mobile Number',
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
                SizedBox(height: 30),
                Padding(
                    padding: const EdgeInsets.only(bottom:0),
                    child: Stack(
                      children: <Widget> [
                        Padding(
                            padding: const EdgeInsets.only(top:23, bottom:0),
                            child: Image.asset('asset/images/img2.png')
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 110, right: 20,bottom:0),
                            child: ButtonTheme(
                              minWidth: 120,
                              height: 40,
                              child: RaisedButton(
                                textColor: Colors.white,
                                color: Colors.teal[600],
                                child: Text('Send OTP', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder:(context)=>OptScreen(),)
                                  );
                                },
                                shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),),
                            ) )
                      ],
                    )
                )
              ],
            )
        )

    );
  }
}