import 'package:flutter/material.dart';

class AppStateManager extends ChangeNotifier {
  bool isObscureSignUpPassword = true;
  bool isObscureChangeOldPassword = true;
  bool isObscureChangeNewPassword = true;

  int bottomNavBarSelectedIndex = 0;

  void setSignUpScreenPasswordObsecure() {
    isObscureSignUpPassword = !isObscureSignUpPassword;
    notifyListeners();
  }

  void setIsObscureChangeOldPassword() {
    isObscureChangeOldPassword = !isObscureChangeOldPassword;
    notifyListeners();
  }

  void setIsObscureChangeNewPassword() {
    isObscureChangeNewPassword = !isObscureChangeNewPassword;
    notifyListeners();
  }

  void setBottomNavigationBarIndex(int index) {
    bottomNavBarSelectedIndex = index;
    notifyListeners();
  }
}
