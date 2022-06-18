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

  ///This Function Is Called In User Info Manager///
  Future setUserInfo(String email, String password) async {
    isLoading = true;
    notifyListeners();
    user = await ApiService().loginUser(email, password);
    print(user.accessToken.toString());
    saveUserToLocal(user);
    isLoading = false;
    notifyListeners();
  }

  void saveUserToLocal(UserInfo user) async {
    var enCodedData = /*jsonEncode(user)*/ user.toJson().toString();
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('userInfo', enCodedData);
    pref.setString('userInfoAuthToken', user.accessToken.toString());

    print('User Saved To Local $enCodedData');
  }

  void getLocalUserInfo() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    userInfoAuthToken = pref.getString(userInfoAuthToken) ?? '';
    String? sharedPrefuserInfo = pref.getString('userInfo');
    var userData = jsonDecode(sharedPrefuserInfo!);
    user = UserInfo.fromJson(userData);
    user = jsonDecode(sharedPrefuserInfo);
  }
}
