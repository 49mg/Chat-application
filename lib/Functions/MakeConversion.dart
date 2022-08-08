// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../const/Constant.dart';

class MakeConversion extends StatelessWidget {
  final String? name;
  final String? messages;
  final ImageProvider? image;

  const MakeConversion({
    Key? key,
    this.name,
    this.messages,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 28,
          backgroundImage: image,
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 3),
              Text(
                "$messages",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
