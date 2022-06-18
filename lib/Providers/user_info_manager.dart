import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tfriends/Models/user_info_model.dart';
import 'package:tfriends/Network/api_service.dart';

class UserInfoManager extends ChangeNotifier {
  bool isLoading = false;
  UserInfo user = UserInfo();
  UserInfo localUser = UserInfo();
  String userInfoAuthToken = '';

  String userInfoAuthToken = '';

  /// This makes a http call from the api service and returns the user from the server. Takes email and password as the string parameter.
  ///
  Future setUserInfo(String email, String password) async {
    isLoading = true;
    notifyListeners();
    user = await ApiService().loginUser(email, password);
    saveUserToLocal(user);
    isLoading = false;
    notifyListeners();
  }

  void saveUserToLocal(UserInfo user) async {
    String encodedData = jsonEncode(user);
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('userInfo', encodedData);
    pref.setString('userInfoAuthToken', user.accessToken.toString());
  }

  void getLocalUserInfo() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    userInfoAuthToken = pref.getString("userInfoAuthToken") ?? '';
    String? sharedPrefuserInfo = pref.getString('userInfo');

    var userData = jsonDecode(sharedPrefuserInfo!);
    user = UserInfo.fromJson(userData);

    notifyListeners();
  }
}
