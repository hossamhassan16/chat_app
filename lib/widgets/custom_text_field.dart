import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  const CustomTextField({this.hintText});
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.white,
          )),
          border: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.white,
          )),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white,
          )),
    );
  }
}
