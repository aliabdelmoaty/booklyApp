// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tharwatflutter/core/constants/styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    Key? key,
    required this.errMsg,
  }) : super(key: key);
  final String errMsg;

  @override
  Widget build(BuildContext context) {
    return Text(
      errMsg,
      style: Styles.textStyle18,
    );
  }
}
