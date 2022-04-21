import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/Contact.dart';
import 'package:project/About.dart';
import 'package:project/BillingHistory.dart';

void main() => runApp( MaterialApp(home: DrawerScreen()));

class DrawerScreen extends StatefulWidget {
  DrawerScreenState createState() => DrawerScreenState();
}

class DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child:ListView(
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
              decoration: BoxDecoration(
                //color: Colors.white,
              ),
              child: Center(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius:22,
                        backgroundColor: Colors.teal[600],
                        child:Icon(Icons.person_outline, color: Colors.white),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10, top: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Vignesh Balasubramanian",style:TextStyle(color:Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                            SizedBox(height: 3),
                            Text('buzzvignesh@gmail.com', style:TextStyle(color:Colors.grey, fontSize:12)),
                            SizedBox(height: 3),
                            Text('9876543210', style:TextStyle(color:Colors.grey, fontSize:12)),
                          ],
                        )
                    )
                    /*Expanded(
                          child: Icon(Icons.person_outline, color: Colors.white,size: 20,),
                          flex: 2,
                        ),
                        Expanded(
                          flex: 6,
                          child: Text(
                            "Vignesh Balasubramanian",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),*/
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            title:Text('Address',style:TextStyle(color:Colors.grey[700], fontSize: 15, fontWeight: FontWeight.bold)),
            subtitle: Text('Home Anna Nagar Street \nGuest User Building - VF', style:TextStyle(color:Colors.grey,fontSize:12)),
            trailing: Icon(Icons.edit,color:Colors.teal),
          ),
          Divider(
            color: Colors.grey,
            indent: 18,
            endIndent: 18,
          ),
          ListTile(
            title: Text("Billing History", style: TextStyle(color:Colors.grey[700],fontWeight: FontWeight.bold, fontSize: 15)),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BillHistoryScreen(),
                ),
              );
            },
          ),
          Divider(
            color: Colors.grey,
            indent: 18,
            endIndent: 18,
          ),
          ListTile(
            title: Text("Contact us",style: TextStyle(color:Colors.grey[700],fontWeight: FontWeight.bold, fontSize: 15)),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactScreen(),
                ),
              );
            },
          ),
          Divider(
            color: Colors.grey,
            indent: 18,
            endIndent: 18,
          ),
          ListTile(
            title: Text("About us",style: TextStyle(color:Colors.grey[700],fontWeight: FontWeight.bold, fontSize: 15)),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutScreen(),
                ),
              );
            },
          ),
          Divider(
            color: Colors.grey,
            indent: 18,
            endIndent: 18,
          ),
          ListTile(
            title: Text("My Orders",style: TextStyle(color:Colors.grey[700],fontWeight: FontWeight.bold, fontSize: 15)),
          ),
          Divider(
            color: Colors.grey,
            indent: 18,
            endIndent: 18,
          ),
          ListTile(
            title: Text("Log Out",style: TextStyle(color:Colors.grey[700],fontWeight: FontWeight.bold, fontSize: 15)),
            onTap: (){
            },
          ),
          Divider(
            color: Colors.grey,
            indent: 18,
            endIndent: 18,
          ),
        ],
      ) ,
    );
  }
}
