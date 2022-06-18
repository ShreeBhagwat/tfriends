import 'package:flutter/material.dart';
import 'package:tfriends/Models/user_info_model.dart';
import 'package:tfriends/Network/api_service.dart';

class UserInfoManager extends ChangeNotifier {
  bool isLoading = false;
  UserInfo user = UserInfo();

  Future setUserInfo(String email, String password) async {
    isLoading = true;
    notifyListeners();
    user = await ApiService().loginUser(email, password);
    print(user.accessToken.toString());
    isLoading = false;
    notifyListeners();
  }
}
