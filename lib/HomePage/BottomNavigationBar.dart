
import 'package:flutter/material.dart';

class MyHomeBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                  blurRadius: 20, color: Colors.grey, spreadRadius: 1)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildContainerBottomNav(Icons.person, isSelected: true),
            buildContainerBottomNav(Icons.shopping_bag),
            buildContainerBottomNav(Icons.home),
            buildContainerBottomNav(Icons.favorite),
            buildContainerBottomNav(Icons.settings),
          ],
        ),
      ),
    );
  }

  Container buildContainerBottomNav(IconData icon, {isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.teal: Colors.white,
        shape: BoxShape.circle,
        boxShadow: isSelected
            ? [BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1)]
            : [],
      ),
      height: 50,
      width: 50,
      child: Icon(icon, color: isSelected ? Colors.white : Colors.grey),
    );
  }
}
// TODO Implement this library.