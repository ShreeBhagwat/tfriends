import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tfriends/Screens/PolicyList.dart';
import 'package:tfriends/Screens/QuotationList.dart';
import 'package:tfriends/Screens/home_screen.dart';

import 'Commission.dart';

class RootScreen extends StatelessWidget {
  RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentIndex = 0;
    List<Widget> bottom_navigation_screens = [
      HomeScreen(),
      PolicyList(),
      QuotationsList(),
      Commission(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/tfrnds_white_logo.png'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 20,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.policy,
                color: Colors.white,
                size: 20,
              ),
              label: 'Policy'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 20,
              ),
              label: 'Quotation'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 20,
              ),
              label: 'Quotation'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 20,
              ),
              label: 'Commission')
        ],
      ),
    );
  }
}
