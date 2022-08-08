// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app/Functions/Sign forms.dart';
import 'package:chat_app/const/Constant.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputsForms(inputIcon: Icons.person, inputType: "name"),

            SizedBox(height: 25),

            InputsForms(inputIcon: Icons.email, inputType: "email"),

            SizedBox(height: 25),

            InputsForms(inputIcon: Icons.security, inputType: "password"),

            SizedBox(height: 25),

            InputsForms(inputIcon: Icons.security, inputType: "Re-password"),

            SizedBox(height: 20),

            // Submit Buttons

            Container(
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
                  "Submit",
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
