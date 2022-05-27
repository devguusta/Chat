import 'package:chat_app/core/shared/widgets/custom_text_form_fiel.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/screen_helpers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Image.asset('assets/images/app_icon.png',
                  width: screenWidthPercentage(context, 0.4),
                  height: screenHeightPercentage(context, 0.2)),
            ),
            Column(
              children: [
                CustomTextFormField(
                  label: "Email Address",
                  hint: "Usernames@gmail.com",
                  prefixIcon:
                      Icon(Icons.email_outlined, color: Colors.grey[700]),
                ),
                CustomTextFormField(
                  label: "Password",
                  prefixIcon: Icon(Icons.lock_outline, color: Colors.grey[700]),
                  hint: "********",
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
