import 'package:flutter/material.dart';
import 'package:tfriends/Helpers/constant.dart';

import '../Widget/custom_text_field_without_prefix.dart';
import '../Widget/custome_button.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({Key? key}) : super(key: key);

  TextEditingController passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              Image.asset(
                'images/tfriends_logo.png',
                height: 107.63,
                width: 200,
              ),
              Text(
                'Change Password',
                style: titleTExtStyle,
              ),
              SizedBox(
                height: 100,
              ),
              CustomTextFieldWithoutPrefix(
                labeltext: 'Password',
                icons: Icons.visibility,
                textEditingController: passwordTextController,
                isObscure: true,
                iconButton: IconButton(
                  onPressed: () {
                    // setState(() {
                    //   isPasswordObscure = !isPasswordObscure;
                    // });
                  },
                  icon: Icon(true ? Icons.visibility : Icons.visibility_off),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFieldWithoutPrefix(
                labeltext: 'Old Password',
                icons: Icons.visibility,
                textEditingController: passwordTextController,
                isObscure: true,
                iconButton: IconButton(
                  onPressed: () {
                    // setState(() {
                    //   isPasswordObscure = !isPasswordObscure;
                    // });
                  },
                  icon: Icon(true ? Icons.visibility : Icons.visibility_off),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              CustomButton(
                height: 45,
                width: double.infinity,
                font_size: 14,
                name: 'New Password',
                background_color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                text_color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}