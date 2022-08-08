// ignore_for_file: prefer_const_constructors

import 'package:chat_app/Functions/Sign forms.dart';
import 'package:chat_app/const/Constant.dart';
import 'package:chat_app/screen/%20Chat%20Screen.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  nextScreenChatScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ChatScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,

      // AppBar

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 25),

            // Email

            InputsForms(
                inputIcon: Icons.person, inputType: "email or Username"),

            SizedBox(height: 25),

            // Password

            InputsForms(inputIcon: Icons.security, inputType: "password"),

            SizedBox(height: 20),

            // Enter Buttons

            InkWell(
              onTap: () {
                nextScreenChatScreen();
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: buttonsColor,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 11, horizontal: 16),
                  child: Text(
                    "Enter",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
