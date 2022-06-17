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
    notifyListeners();
  }
}
