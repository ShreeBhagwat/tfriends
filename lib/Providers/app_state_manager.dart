import 'package:flutter/cupertino.dart';

class AppStateManager extends ChangeNotifier {
  bool isObscureSignUpPassword = true;
  bool isObscureSignUpNewPassword = true;
  bool isObscureSignUpOldPassword = true;

  void setSignUpScreenPasswordObsecure() {
    isObscureSignUpPassword = !isObscureSignUpPassword;
    notifyListeners();
  }

  void setChangePasswordScreenPasswordObsecure() {
    isObscureSignUpOldPassword = !isObscureSignUpOldPassword;
    notifyListeners();
  }

  void setChangePasswordScreenNewPasswordObsecure() {
    isObscureSignUpNewPassword = !isObscureSignUpNewPassword;
    notifyListeners();
  }
}
