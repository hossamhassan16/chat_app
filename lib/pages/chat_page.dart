import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});
  static String id = "ChatPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo-removebg-preview.png",
              height: 50,
            ),
            Text("chat"),
          ],
        ),
        centerTitle: true,
      ),
    );
  }
}
