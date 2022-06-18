import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfriends/Providers/app_state_manager.dart';
import 'package:tfriends/Providers/user_info_manager.dart';
import 'package:tfriends/Screens/login_screen.dart';
import 'package:tfriends/Screens/splash_screen.dart';

void main() {
  runApp(TFriends());
}

class TFriends extends StatelessWidget {
  const TFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
<<<<<<< HEAD
      title: 'New Chnages In Masters',
=======
      title: 'No Changes',
>>>>>>> db7bceb3d0449b54b0e148dfa41347d63ea55fb6
      home: LoginScreen(),
=======
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppStateManager()),
        ChangeNotifierProvider(create: (_) => UserInfoManager()),
      ],
      child: MaterialApp(
        title: 'No Changes',
        home: SplashScreen(),
      ),
>>>>>>> 6a90a0847efc0aa67b82bc33bf99cb5944fb50bb
    );
  }
}
