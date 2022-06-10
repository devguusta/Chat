import 'package:chat_app/core/shared/widgets/custom_text_form_fiel.dart';
import 'package:flutter/material.dart';

import '../../../core/const/routes.dart';
import '../../../core/helpers/screen_helpers.dart';
import '../../../core/shared/widgets/custom_elevated_button.dart';
import '../../../core/shared/widgets/visible_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
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
                  SizedBox(height: screenHeightPercentage(context, 0.05)),
                  CustomTextFormField(
                    label: "Password",
                    prefixIcon:
                        Icon(Icons.lock_outline, color: Colors.grey[700]),
                    hint: "********",
                    suffixIcon: const VisibleWidget(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(Routes.register);
                        },
                        child: const Text("Sign up"),
                        style: TextButton.styleFrom(primary: Colors.grey[700]),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Recovery Password"),
                        style: TextButton.styleFrom(primary: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),
              CustomElevatedButton(
                onPressed: () {},
                text: "Sign up",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
