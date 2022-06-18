import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  CustomTextFieldWidget({
    Key? key,
    required this.labeltext,
    this.icon,
    required this.textEditingController,
    this.isObscure = false,
    this.icons,
    this.iconButton,
    this.errorText,
    this.validtorFunction,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String labeltext;
  final IconData? icon;
  final IconData? icons;
  final bool isObscure;
  final IconButton? iconButton;
  final String? errorText;
  final String? Function(String?)? validtorFunction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validtorFunction,
      controller: textEditingController,
      obscureText: isObscure,
      decoration: InputDecoration(
        errorText: errorText,
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 5,
            ),
            Icon(icon, color: Colors.blue),
            SizedBox(
              width: 5,
            ),
            Container(
              height: 25,
              width: 2,
              color: Colors.grey,
            ),
          ],
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelStyle: TextStyle(color: Colors.grey),
        label: Text(
          labeltext,
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 5.0,
        ),
        suffixIcon: iconButton ??
            Container(
              width: 0,
            ),
      ),
    );
  }
}
