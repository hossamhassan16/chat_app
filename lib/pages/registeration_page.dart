import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterationPage extends StatelessWidget {
  const RegisterationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            SizedBox(
              height: 150,
            ),
            Image.asset(
              "assets/images/scholar.png",
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Scholar chat",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "SIgn up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: "Email",
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(hintText: "Password"),
            SizedBox(
              height: 10,
            ),
            CustomTextField(hintText: "Confirm Password"),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "Sign up",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
