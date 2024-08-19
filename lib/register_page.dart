// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:seabank_slicing/widgets/icon_button.dart';
import 'package:seabank_slicing/widgets/outlined_button.dart';
import 'package:seabank_slicing/widgets/richtext.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100, bottom: 10),
              child: Image.asset(
                'images/seabank.png',
                width: 180,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 55, bottom: 30),
              child: Text(
                "Mulai Sekarang",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            IconTombol(
              fontSize: 16,
              images: 'images/shopeelogo.png',
              textButton: 'Daftar dengan Shopee',
              height: 25.0,
              backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white,
              radius: 8.0,
              size: 370.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 25, bottom: 25),
              child: Text("ATAU"),
            ),
            OutlinedTombol(
              fontSize: 16,
              textButton: "Daftar dengan no. Handphone",
              iconData: Icons.phone_android_sharp,
              height: 25.0,
              backgroundColor: Colors.white,
              foregroundColor: Colors.deepOrange,
              radius: 8.0,
              size: 370,
            ),
            SizedBox(
              height: 236,
            ),
            CustomRichText(
                firstText: "Sudah terdaftar? ",
                textLink: "Log In",
                colorFirstText: Colors.black,
                colorLinkText: Colors.blue,
                fontWeight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}
