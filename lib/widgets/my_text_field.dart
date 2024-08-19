import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool isObsecure;
  final InputBorder border;
  final Color fillColor;
  final bool isPassword;

  const MyTextField({
    super.key,
    required this.hintText,
    required this.isObsecure,
    required this.border,
    required this.fillColor,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: isObsecure,
        decoration: InputDecoration(
          hintText: hintText,
          border: border,
          filled: true,
          fillColor: fillColor,
          suffixIcon: isPassword ? Icon(Icons.visibility) : null,
        ),
      ),
    );
  }
}