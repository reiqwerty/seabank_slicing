import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final String firstText;
  final String textLink;
  final Color colorFirstText;
  final Color colorLinkText;
  final FontWeight fontWeight;

  const CustomRichText(
      {super.key,
      required this.firstText,
      required this.textLink,
      required this.colorFirstText,
      required this.colorLinkText,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: firstText,
            style: TextStyle(color: colorFirstText),
          ),
          WidgetSpan(
              child: Text(
               textLink,
                style: TextStyle(
                  color: colorLinkText,
                  fontWeight: fontWeight,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
