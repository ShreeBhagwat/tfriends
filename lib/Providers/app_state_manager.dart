import 'package:flutter/cupertino.dart';

class AppStateManager extends ChangeNotifier {
  bool isObscureSignUpPassword = true;
  bool isObscureChangesPasswordOldPassword = true;
  bool isObscureChangesPasswordNewPassword = true;

  void setSignupScreenPasswordObscure() {
    isObscureSignUpPassword = !isObscureSignUpPassword;
    notifyListeners();
  }

  void setChangePasswordScreenOldPasswordObscure() {
    isObscureChangesPasswordOldPassword = !isObscureChangesPasswordOldPassword;
    notifyListeners();
  }

  void setChangePasswordScreenNewPasswordObscure() {
    isObscureChangesPasswordNewPassword = !isObscureChangesPasswordNewPassword;
    notifyListeners();
  }
}
