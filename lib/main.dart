import 'package:flutter/material.dart';
import 'package:tfriends/Screens/login_screen.dart';

void main() {
  runApp(TFriends());
}

class TFriends extends StatelessWidget {
  const TFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'No Changes',
      home: LoginScreen(),
    );
  }
}
