// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hint;
  final String? label;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  const CustomTextFormField({
    Key? key,
    this.hint,
    this.label,
    this.prefixIcon,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
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
        suffixIcon: const Icon(Icons.visibility_off),
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
