// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hint;
  final String? label;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  const CustomTextFormField({
    Key? key,
    this.hint,
    this.label,
    this.prefixIcon,
    this.controller,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 14, color: Colors.grey),
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: Colors.grey[300],
        contentPadding:
            const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
        filled: true,
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
      ),
    );
  }
}
