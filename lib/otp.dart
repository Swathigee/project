import 'package:flutter/material.dart';
import 'package:project/SignUp.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

void main() => runApp( MaterialApp(home: OptScreen()));

class OptScreen extends StatefulWidget {
  OptScreenState createState() => OptScreenState();
}

class OptScreenState extends State<OptScreen> {
  TextEditingController newTextEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();
  @override
  void dispose() {
    newTextEditingController.dispose();
    focusNode.dispose();
    super.dispose();
  }

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
                    child: Image.asset('asset/images/img3.jpeg')
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
                SizedBox(height:15),
                Padding(
                    padding: const EdgeInsets.only(top:0, bottom:0),
                    child: Text('Verification Code', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.teal[800]))
                ),
                SizedBox(height:8),
                Padding(
                    padding: const EdgeInsets.only(top:0, bottom: 0),
                    child: Text('You will get a OTP via SMS', style: TextStyle(fontSize: 15, color: Colors.black))
                ),
                SizedBox(height:10),
                Padding(
                  padding: const EdgeInsets.only(top:0, left: 30, right: 30),
                  child: PinCodeFields(
                  length: 6,
                  controller: newTextEditingController,
                  focusNode: focusNode,
                  onComplete: (result) {
                    print(result);
                  },
                ),
                ),
                SizedBox(height:10),
                Padding(
                    padding: const EdgeInsets.only(bottom:0),
                    child: Stack(
                      children: <Widget> [
                        Padding(
                            padding: const EdgeInsets.only(top:21, bottom:0),
                            child: Image.asset('asset/images/img4.png')
                        ),
                       SizedBox(height: 10),
                        Column(
                         children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 110, right: 20,bottom:0, top: 30),
                            child: ButtonTheme(
                              minWidth: 120,
                              height: 40,
                              child: RaisedButton(
                                textColor: Colors.white,
                                color: Colors.teal[600],
                                child: Text('Next', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder:(context)=>SignUp(),)
                                  );
                                },
                                shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),),
                            ) )
                      ],
                    ) ] )
                )
              ],
            )
        )
    );
  }
}
