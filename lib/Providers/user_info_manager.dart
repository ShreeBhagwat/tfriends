import 'package:flutter/cupertino.dart';

import 'package:tfriends/Network/api_service.dart';

import '../Models/login_model.dart';

class UserInfoManager extends ChangeNotifier {
  UserInfo user = UserInfo();

  void setUserInfo(String email, String password) async {
    // user = await ApiService().loginUser(email, password);
    user = await ApiService().loginUser(email, password);

    print(user.accessToken);

    notifyListeners();
  }
}
