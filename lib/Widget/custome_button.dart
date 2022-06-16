import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      required this.height,
      required this.width,
      required this.name,
      required this.font_size,
      this.fontWeight,
      this.text_color,
      this.background_color,
      this.borderRadius,
      this.onPress,
      this.isNavigation,
      this.widget})
      : super(key: key);

  final double height;
  final double width;
  final String name;
  final double font_size;
  final FontWeight? fontWeight;
  final Color? text_color;
  final Color? background_color;
  final BorderRadius? borderRadius;
  final Function()? onPress;
  final bool? isNavigation;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isNavigation ?? false) {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => widget ?? Container()));
        } else {
          onPress;
        }
      },
      child: Container(
        width: width,
        height: height,
        child: Center(
            child: Text(
          name,
          style: TextStyle(
              fontSize: font_size, fontWeight: fontWeight, color: text_color),
        )),
        decoration: BoxDecoration(
          color: background_color,
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
