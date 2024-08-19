// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:seabank_slicing/widgets/my_button.dart';
import 'package:seabank_slicing/widgets/my_text_field.dart';
import 'package:seabank_slicing/widgets/richtext.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(
              Icons.help_outline_rounded,
              color: Colors.blue,
              size: 19,
            ),
            SizedBox(width: 8),
            Text(
              "Bantuan",
              style: TextStyle(color: Colors.blue, fontSize: 17),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Image.asset(
                'images/seabank.png',
                width: 180,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Log in dengan no. handphone",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17 // Make the text bold
                  ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: MyTextField(
                  hintText: "Username",
                  isObsecure: false,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(3.0))),
                  fillColor: Colors.grey[200]!,
                  isPassword: false,
                )),
            Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: MyTextField(
                  hintText: "Password",
                  isObsecure: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(3.0))),
                  fillColor: Colors.grey[200]!,
                  isPassword: true,
                )),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(bottom: 40),
              child: Text(
                "Lupa password?",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              MyButton(
                textButton: "Log In",
                backgroundColor: Colors.grey[300]!,
                padding: 16.0,
                textColor: Colors.grey[600]!,
              ),
            ]),
            SizedBox(
              height: 236,
            ),
            CustomRichText(
                firstText: "Belum memiliki akun? ",
                textLink: "Daftar",
                colorFirstText: Colors.black,
                colorLinkText: Colors.blue,
                fontWeight: FontWeight.bold)
            // Container(
            //   margin: EdgeInsets.only(bottom: 25.0),
            //   child: RichText(
            //     text: TextSpan(
            //       children: const [
            //         TextSpan(
            //           text: "Belum memiliki akun? ",
            //           style: TextStyle(color: Colors.black),
            //         ),
            //         TextSpan(
            //           text: "Daftar",
            //           style: TextStyle(
            //               color: Colors.blue, fontWeight: FontWeight.bold),
            //         ),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
