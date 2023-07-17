import 'package:flutter/material.dart';
import 'package:tharwatflutter/core/constants/styles.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      required this.text,
      this.fontSize});
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(16))),
          onPressed: () {},
          child: Text(text,
              style: Styles.textStyle18.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize))),
    );
  }
}
