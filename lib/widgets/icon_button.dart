import 'package:flutter/material.dart';

class IconTombol extends StatelessWidget {
  final double fontSize;
  final String textButton;
  final String images;
  final double height;
  final Color backgroundColor;
  final Color foregroundColor;
  final double radius;
  final double size;

  const IconTombol({
    super.key,
    required this.fontSize,
    required this.textButton,
    required this.images,
    required this.height,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.radius,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          minimumSize: Size(size, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius)),
          )),
      onPressed: () {},
      label: Text(
        textButton,
        style: TextStyle(
          color: foregroundColor,
          fontSize: fontSize,
        ),
      ),
      icon: Image.asset(images, height: height, fit: BoxFit.cover),
    );
  }
}