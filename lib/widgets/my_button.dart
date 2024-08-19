import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String textButton;
  final Color backgroundColor;
  final double padding;
  final Color textColor;

  const MyButton({
    super.key,
    required this.textButton,
    required this.backgroundColor,
    required this.padding,
    required this.textColor,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.backgroundColor,
        padding: EdgeInsets.all(widget.padding),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      onPressed: () {},
      child: Text(
        widget.textButton,
        style: TextStyle(
          color: widget.textColor,
        ),
      ),
    );
  }
}
