import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tfriends/Widget/custom_password_textfield.dart';
import 'package:tfriends/Widget/custom_text_field_widget.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({Key? key, this.iconButton}) : super(key: key);

  final IconButton? iconButton;

  TextEditingController passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 90,
                    ),
                    Image.asset(
                      'images/tfriends_logo.png',
                      height: 90,
                      width: 130,
                    ),
                    Text(
                      'Change Password',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: CustomPasswordTextField(
                        labeltext: 'Old Password',
                        textEditingController: passwordTextController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CustomPasswordTextField(
                        labeltext: 'New Password',
                        textEditingController: passwordTextController,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: (() {}),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 350,
                      height: 45,
                      child: Center(
                          child: Text(
                        'Change Password',
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
          ),
        ),
      ),
    );
  }
}
