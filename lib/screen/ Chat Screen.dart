// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:chat_app/Functions/MakeConversion.dart';
import 'package:chat_app/const/Constant.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
              child: Column(
                children: [
                  Row(
                    children: [
                      // User Picture

                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        backgroundImage: NetworkImage(
                            "https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png"),
                      ),
                      SizedBox(width: 13),

                      // Chat Text

                      Text(
                        "Chat",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),

                      // Camera icons

                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                        ),
                      ),

                      SizedBox(width: 9),

                      // Pains Icon

                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Search bar

                  Container(
                    width: width,
                    height: height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          SizedBox(width: 8),
                          Text("Search"),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // Online Friends avatars

                  SizedBox(
                    height: height * 0.08,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          buildFriendsPic(image1),
                          SizedBox(width: 26),
                          buildFriendsPic(image2),
                          SizedBox(width: 26),
                          buildFriendsPic(image3),
                          SizedBox(width: 26),
                          buildFriendsPic(image4),
                          SizedBox(width: 26),
                          buildFriendsPic(image5),
                          SizedBox(width: 26),
                          buildFriendsPic(image6),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  //Chat sections

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Person",
                            style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 19,
                            ),
                          ),
                          SizedBox(height: 3),
                          Container(
                            width: width * 0.12,
                            height: 3,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Text(
                        "Group",
                        style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 19,
                        ),
                      ),
                      Text(
                        "Channel",
                        style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),

                  // The Conversation

                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Column(
                      children: [
                        MakeConversion(
                          name: "Mohammed Ali",
                          messages: "How are you dude? ",
                          image: image1,
                        ),
                        MakeConversion(
                          name: "Abdallah Mohammed",
                          messages: "Okay i will come at 6:00",
                          image: image2,
                        ),
                        MakeConversion(
                          name: "Sadek Kamal",
                          messages: "Lol",
                          image: image3,
                        ),
                        MakeConversion(
                          name: "Rad Waled",
                          messages: "Lets give up ",
                          image: image4,
                        ),
                        MakeConversion(
                          name: "Yahya Mohsen",
                          messages: "Did you see what she dude OMG!!",
                          image: image5,
                        ),
                        MakeConversion(
                          name: "Abdulsalam Yasir",
                          messages: "Wanna go out? ",
                          image: image6,
                        ),
                        MakeConversion(
                          name: "Mohammed Ali",
                          messages: "Okay i will send ",
                          image: image7,
                        ),
                        MakeConversion(
                          name: "Abdallah Mohammed",
                          messages: "Nice to meet you ",
                          image: image8,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildFriendsPic(image) {
  return CircleAvatar(
    backgroundColor: Colors.white,
    radius: 30,
    backgroundImage: image,
    child: Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 14,
        height: 14,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.green,
        ),
      ),
    ),
  );
}
