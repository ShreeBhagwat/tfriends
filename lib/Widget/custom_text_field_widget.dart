import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatefulWidget {
  CustomTextFieldWidget({
    Key? key,
    required this.labeltext,
    required this.icon,
    required this.textEditingController,
    this.isObscure,
    this.icons,
    this.iconButton,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String labeltext;
  final IconData icon;
  final IconData? icons;
  bool? isObscure;
  final IconButton? iconButton;

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      obscureText: widget.isObscure ?? false,
      decoration: InputDecoration(
        // suffixIcon: Icon(icon, color: Colors.grey,),
        //prefixIcon: Icon(icon, color: Colors.blue,),

        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 5,
            ),
            Icon(widget.icon, color: Colors.blue),
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
        ),

        suffixIcon: widget.iconButton ??
            Container(
              width: 0,
            ),
      ),
    );
  }
}
