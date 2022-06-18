import 'package:flutter/cupertino.dart';
import 'package:tfriends/Models/user_info.dart';
import 'package:tfriends/Network/api_service.dart';

class UserInfoManager extends ChangeNotifier {
  bool isLoading = false;
  UserInfo user = UserInfo();

  void setUserInfo(String email, String password) async {
    isLoading = true;
    notifyListeners();
    user = await ApiService().loginUser(email, password);
    print(user.accessToken);
    notifyListeners();
  }
}
