<<<<<<< HEAD
import 'package:flutter/cupertino.dart';

class AppStateManager extends ChangeNotifier {
  bool isObsecureSignUpPassword = true;
  bool isObsecureNewPassword = true;
  bool isObsecureOldPassword = true;

  void setSignUpScreenPasswordObsecure() {
    isObsecureSignUpPassword = !isObsecureSignUpPassword;

    notifyListeners();
  }

  void setnewPasswordObsecure() {
    isObsecureNewPassword = !isObsecureNewPassword;
    notifyListeners();
  }

  void setoldPasswordObsecure() {
    isObsecureOldPassword = !isObsecureOldPassword;
=======
import 'package:flutter/material.dart';

class AppStateManager extends ChangeNotifier {
  bool isObscureSignUpPassword = true;
  bool isObscureChangeOldPassword = true;
  bool isObscureChangeNewPassword = true;

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
>>>>>>> master
    notifyListeners();
  }
}
