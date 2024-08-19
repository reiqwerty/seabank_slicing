import 'package:flutter/material.dart';

class OutlinedTombol extends StatelessWidget {
  final double fontSize;
  final String textButton;
  final IconData iconData;
  final double height;
  final Color backgroundColor;
  final Color foregroundColor;
  final double radius;
  final double size;

  const OutlinedTombol(
      {super.key,
      required this.fontSize,
      required this.textButton,
      required this.height,
      required this.backgroundColor,
      required this.foregroundColor,
      required this.radius,
      required this.size, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(size, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          side: BorderSide(color: foregroundColor, width: 1.0), // Border side
        ),
      ),
      onPressed: () {},
      label: Text(
        textButton,
        style: TextStyle(
          color: foregroundColor, // Text color
          fontSize: fontSize,
        ),
      ),
      icon: Icon(iconData, color: foregroundColor),
    );
  }
  }

