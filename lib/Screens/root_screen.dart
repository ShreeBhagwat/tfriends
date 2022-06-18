import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tfriends/Screens/PolicyList.dart';
import 'package:tfriends/Screens/QuotationList.dart';
import 'package:tfriends/Screens/home_screen.dart';

import 'Commission.dart';
=======
import 'package:provider/provider.dart';
import 'package:tfriends/Providers/app_state_manager.dart';
import 'package:tfriends/Screens/commission_screen.dart';
import 'package:tfriends/Screens/home_screen.dart';
import 'package:tfriends/Screens/policy_screen.dart';
import 'package:tfriends/Screens/quotation_screen.dart';
>>>>>>> master

class RootScreen extends StatelessWidget {
  RootScreen({Key? key}) : super(key: key);

<<<<<<< HEAD
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
=======
  List<Widget> screens = [
    HomeScreen(),
    PolicyScreen(),
    QuotationScreen(),
    CommissionScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/tfriends_white.png'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.autorenew))],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:
            Provider.of<AppStateManager>(context).bottomNavBarSelectedIndex,
        onTap: (index) {
          Provider.of<AppStateManager>(context, listen: false)
              .setBottomNavigationBarIndex(index);
        },
>>>>>>> master
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
<<<<<<< HEAD
                size: 20,
=======
>>>>>>> master
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
<<<<<<< HEAD
                Icons.home,
=======
                Icons.filter,
>>>>>>> master
                color: Colors.white,
                size: 20,
              ),
              label: 'Quotation'),
          BottomNavigationBarItem(
              icon: Icon(
<<<<<<< HEAD
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
=======
                Icons.money,
                color: Colors.white,
                size: 20,
              ),
              label: 'Commission'),
        ],
      ),
      body: IndexedStack(
        index: Provider.of<AppStateManager>(context, listen: false)
            .bottomNavBarSelectedIndex,
        children: screens,
      ),
>>>>>>> master
    );
  }
}
