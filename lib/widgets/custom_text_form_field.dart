import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {this.hintText, this.onChanged, this.obsecureText = false});
  final String? hintText;
  final Function(String)? onChanged;
  final bool obsecureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecureText,
      validator: (data) {
        if (data!.isEmpty) {
          return "Field is required";
        }
        return null;
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
