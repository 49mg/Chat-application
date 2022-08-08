// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app/const/Constant.dart';
import 'package:flutter/material.dart';

class InputsForms extends StatelessWidget {
  final String? inputType;
  final IconData? inputIcon;

  const InputsForms({Key? key, required this.inputType, required this.inputIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.07,
      decoration: BoxDecoration(
        color: formColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 12),
          Icon(inputIcon, color: Colors.white),
          SizedBox(width: 12),
          Text(
            "$inputType",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
