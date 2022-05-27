import 'package:flutter/material.dart';

mixin KeyboardManager {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
