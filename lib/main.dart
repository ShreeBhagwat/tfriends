import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:tfriends/Providers/app_state_manager.dart';

import 'package:tfriends/Providers/user_info_manager.dart';

import 'package:tfriends/Screens/login_screen.dart';

import 'package:tfriends/screens/change_password.dart';

import 'Screens/splash_screen.dart';

void main() {
  runApp(TFriends());
}

class TFriends extends StatelessWidget {
  const TFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppStateManager()),
        ChangeNotifierProvider(create: (_) => UserInfoManager()),
      ],
      child: MaterialApp(
        title: 'No Changes',
        home: SlashScreen(),
      ),
    );
  }
}
