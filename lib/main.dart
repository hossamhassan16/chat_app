import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/registeration_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "LoginPage": (context) => LoginPage(),
        "RegisterationPage": (context) => RegisterationPage(),
      },
      initialRoute: "LoginPage",
    );
  }
}
