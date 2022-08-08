// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app/screen/signIn.dart';
import 'package:flutter/material.dart';

import 'const/Constant.dart';
import 'screen/signUp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Conversation Applications",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  // Methode => Go to Sign in Screen

  nextScreenSignIn() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignIn()));
  }


  // Methode => Go to Sign Up Screen
  nextScreenSignUp() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignUp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,

      // AppBar

      appBar: AppBar(
        title: Text("Chap Applications"),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.info, size: 30),
        ],
      ),


      // Buttons


      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // sign in buttons

            InkWell(
              onTap: () {
                nextScreenSignIn();
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
                    "Sign in",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 24),
                  ),
                ),
              ),
            ),

            SizedBox(height: 25),

            // sign up buttons

            InkWell(
              onTap: () {
                nextScreenSignUp();
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
                    "Sign up",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 23),
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