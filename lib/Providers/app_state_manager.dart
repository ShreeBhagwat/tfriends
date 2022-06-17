import 'package:flutter/material.dart';

class AppStateManager extends ChangeNotifier {
  bool isObscureSignUpPassword = true;

  void setSignUpScreenPasswordObsecure() {
    isObscureSignUpPassword = !isObscureSignUpPassword;
    notifyListeners();
  }
}
