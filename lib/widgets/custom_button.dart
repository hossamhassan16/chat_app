import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
          child: Text(
        text!,
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
