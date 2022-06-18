import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfriends/Network/api_service.dart';
import 'package:tfriends/Providers/app_state_manager.dart';
import 'package:tfriends/Providers/user_info_manager.dart';
import 'package:tfriends/Screens/change_password.dart';

import '../Helpers/helper_functions.dart';
import '../Widget/custom_text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  String emailid = ' ';

  String password = ' ';
  TextEditingController emailidTextController = TextEditingController();

  TextEditingController passwordTextController = TextEditingController();

//controller is used to get values from user
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Consumer<UserInfoManager>(
          builder: (context, userInfoManage, child) => Center(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/tfriends_logo.png',
                            height: 107.63,
                            width: 200,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 10.0,
                              left: 20.0,
                            ),
                            child: Container(
                              height: 60,
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: CustomTextFieldWidget(
                        labeltext: 'Email or Mobile No.',
                        icon: Icons.person,
                        textEditingController: emailidTextController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Consumer<AppStateManager>(
                        builder: (context, appStateManager, child) =>
                            CustomTextFieldWidget(
                          labeltext: 'Password',
                          icon: Icons.lock,
                          icons: Icons.visibility,
                          textEditingController: passwordTextController,
                          isObscure: appStateManager.isObscureSignUpPassword,
                          iconButton: IconButton(
                            onPressed: () {
                              appStateManager.setSignUpScreenPasswordObsecure();
                            },
                            icon: Icon(appStateManager.isObscureSignUpPassword
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              HelperClass.nanvigateToScreen(
                                context,
                                ChangePassword(),
                              );
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: InkWell(
                        //inkwell gives material properties
                        onTap: () async {
                          //navigation of userscreen page
                          print('Login Button Tapped');
                          await userInfoManage.setUserInfo(
                              emailidTextController.text,
                              passwordTextController.text);

                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (_) => ChangePassword()));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 38,
                          child: Center(
                              child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          )),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                userInfoManage.isLoading
                    ? Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.transparent,
                        child: Center(
                            child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          width: 100,
                          height: 100,
                          child: Container(
                            width: 80,
                            height: 80,
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Loading ...',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )))
                    : Container()
              ],
            ),
          ),
        ),
      ),
    ));
  }

  void LoginUser(BuildContext context) {
    emailid = emailidTextController.text;
    password = passwordTextController.text;

    // Navigator.of(context).pushAndRemoveUntil(
    //     MaterialPageRoute(
    //       builder: (_) => DashboardScreen(),
    //     ),
    //     (route) => false);
  }
}
