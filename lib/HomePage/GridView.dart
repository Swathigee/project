import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(home: GridScreen()));

class GridScreen extends StatefulWidget {
  GridScreenState createState() => GridScreenState();
}

class GridScreenState extends State<GridScreen> {
  final menuList =[
    _MenuItem("asset/grid/img1.png", "Milk & Dairy" ),
    _MenuItem("asset/grid/img2.png","Colo Pressed Oils" ),
    _MenuItem("asset/grid/img3.png", "Rice"),
    _MenuItem("asset/grid/img4.png","Pulses" ),
    _MenuItem("asset/grid/img5.png", "Millets"),
    _MenuItem("asset/grid/img6.png","Flours"),
    _MenuItem("asset/grid/img7.png", "Jaggery & Sugar"),
    _MenuItem("asset/grid/img8.png", "Spices"),
    _MenuItem("asset/grid/img9.png","Idli & Dosa Batter"),
    _MenuItem("asset/grid/img10.png","Gardening"),
    _MenuItem("asset/grid/img11.png", "Health Drink"),
    _MenuItem("asset/grid/img12.png","Nuts & Dry Fruits"),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      //crossAxisSpacing: 5.0,
      //mainAxisSpacing: 5.0,
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, position) {
        return Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          height: 90,
                          width: 90,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(4.5),
                              child: Image.asset(
                                menuList[position].image,
                                height: 40,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            menuList[position].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 8.9, color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],

                  ),
                )));
      },
      itemCount: menuList.length,
    );
  }
}

class _MenuItem {
  final String image;
  final String title;

  _MenuItem(this.image, this.title);
}