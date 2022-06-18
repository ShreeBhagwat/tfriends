import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tfriends/Models/user_info_model.dart';
import 'package:tfriends/Network/api_service.dart';

class UserInfoManager extends ChangeNotifier {
  bool isLoading = false;
  UserInfo user = UserInfo();
  UserInfo localuser = UserInfo();
  String userInfoAuthToken = '';

  /// this makes a http call from the api service and returns the user from the server.///
  ///this hover is done by triple comment///
  Future setUserInfo(String email, String password) async {
    isLoading = true;
    notifyListeners();
    user = await ApiService().loginUser(email, password);
    print(user.accessToken.toString());
    saveUserToLocal(user);
    isLoading = false;
    notifyListeners();
  }

// for storing data we use below code
  void saveUserToLocal(UserInfo user) async {
    String encodedData = user.toJson().toString();
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('userInfo', encodedData);
    pref.setString('userInfoAuthToken', user.accessToken.toString());
    print('User saved to local $encodedData');
  }

  void getLocalUserInfo() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    userInfoAuthToken = pref.getString('userInfoAuthToken') ?? '';
    String? sharedPrefuserInfo = pref.getString('userInfo');
    var userData = jsonDecode(sharedPrefuserInfo!);
    user = UserInfo.fromJson(userData);
    print(userInfoAuthToken);
    notifyListeners();
  }
}
