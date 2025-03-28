import 'package:chat_app/constants.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});
  static String id = "ChatPage";

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  CollectionReference messages =
      FirebaseFirestore.instance.collection('messages');
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: messages.get(),
      builder: (context, snapshot) {
        List<MessageModel> messagesList = [];
        for (int i = 0; i < snapshot.data!.docs.length; i++) {
          messagesList.add(
            MessageModel.fromJson(snapshot.data!.docs[i]),
          );
        }
        if (snapshot.hasData) {
          // print(snapshot.data!.docs[2]["message"]);
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
                  Text(
                    "chat",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              centerTitle: true,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: messagesList.length,
                      itemBuilder: (context, index) {
                        return ChatBubble(
                          message: messagesList[index],
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    controller: controller,
                    onSubmitted: (data) {
                      messages.add({
                        "message": data,
                      });
                      controller.clear();
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      hintText: "Send Message",
                      suffixIcon: Icon(
                        Icons.send,
                        color: kPrimaryColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Text("Loading...");
        }
      },
    );
  }
}
