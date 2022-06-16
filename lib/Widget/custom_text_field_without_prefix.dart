import 'package:flutter/material.dart';

class CustomTextFieldWithoutPrefix extends StatefulWidget {
  CustomTextFieldWithoutPrefix({
    Key? key,
    required this.labeltext,
    required this.textEditingController,
    this.isObscure,
    this.icons,
    this.iconButton,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String labeltext;
  final IconData? icons;
  bool? isObscure;
  final IconButton? iconButton;

  @override
  State<CustomTextFieldWithoutPrefix> createState() =>
      _CustomTextFieldWithoutPrefixState();
}

class _CustomTextFieldWithoutPrefixState
    extends State<CustomTextFieldWithoutPrefix> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      obscureText: widget.isObscure ?? false,
      decoration: InputDecoration(
        // suffixIcon: Icon(icon, color: Colors.grey,),
        //prefixIcon: Icon(icon, color: Colors.blue,),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelStyle: TextStyle(color: Colors.grey),
        label: Text(
          widget.labeltext,
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
          horizontal: 15,
        ),

        suffixIcon: widget.iconButton ??
            Container(
              width: 0,
            ),
      ),
    );
  }
}
