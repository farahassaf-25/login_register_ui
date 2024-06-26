import 'package:flutter/material.dart';
import 'package:signin_signup/constant.dart';

class CustomTextFields extends StatelessWidget {
  final String? hintText;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final TextEditingController? controller;

  const CustomTextFields({
    Key? key,
    this.contentPadding = const EdgeInsets.fromLTRB(13, 14, 13, 14),
    this.controller,
    this.obscureText = false,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          color: Color(0xFF616161),
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
        contentPadding: contentPadding,
        filled: true,
        fillColor: const Color(0xFFF1F4FF),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: Constant.primaryColor, width: 1.5),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
