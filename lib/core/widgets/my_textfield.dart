import 'package:flutter/material.dart';

import '../theme/my_colors.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  const MyTextFormField({
    super.key,
    required this.hintText,
    this.obscureText,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      decoration: BoxDecoration(
        color: MyColors.secondary,
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.white,
        obscureText: obscureText ?? false,
        validator: validator,
        decoration: InputDecoration.collapsed(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
