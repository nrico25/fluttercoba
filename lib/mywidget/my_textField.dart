import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {
  final String hintText;
  final TextStyle textStyle;
  final bool isObsecure;

  const MyTextField(
      {super.key,
      required this.hintText,
      required this.textStyle,
      required this.isObsecure,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        obscureText: isObsecure,
        style: textStyle,
        decoration: InputDecoration(hintText: hintText, ),
      ),
    );
  }
}
