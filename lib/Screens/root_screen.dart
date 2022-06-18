import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfriends/Providers/app_state_manager.dart';
import 'package:tfriends/Screens/commission_screen.dart';
import 'package:tfriends/Screens/home_screen.dart';
import 'package:tfriends/Screens/policy_screen.dart';
import 'package:tfriends/Screens/quotation_screen.dart';

class RootScreen extends StatelessWidget {
  RootScreen({Key? key}) : super(key: key);

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
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
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
                Icons.filter,
                color: Colors.white,
                size: 20,
              ),
              label: 'Quotation'),
          BottomNavigationBarItem(
              icon: Icon(
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
    );
  }
}
