import 'package:chat_app/core/shared/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/screen_helpers.dart';
import '../../../core/shared/widgets/custom_text_form_fiel.dart';
import '../../../core/shared/widgets/visible_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isChecked = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _phoneController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    flex: 1,
                    child: Center(
                      child: Image.asset('assets/images/app_icon.png',
                          width: screenWidthPercentage(context, 0.3),
                          height: screenHeightPercentage(context, 0.2)),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Flexible(
                      flex: 3,
                      child: Column(
                        children: [
                          CustomTextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: _emailController,
                            label: "Email Address",
                            hint: "Usernames@gmail.com",
                            prefixIcon: Icon(Icons.email_outlined,
                                color: Colors.grey[700]),
                            textInputAction: TextInputAction.next,
                          ),
                          SizedBox(
                              height: screenHeightPercentage(context, 0.04)),
                          CustomTextFormField(
                            keyboardType: TextInputType.name,
                            controller: _nameController,
                            label: "Name",
                            hint: "Enter your name",
                            prefixIcon: Icon(Icons.person_outline,
                                color: Colors.grey[700]),
                            textInputAction: TextInputAction.next,
                          ),
                          SizedBox(
                              height: screenHeightPercentage(context, 0.04)),
                          CustomTextFormField(
                            keyboardType: TextInputType.phone,
                            controller: _phoneController,
                            label: "Phone",
                            hint: "Enter your phone number",
                            prefixIcon: Icon(Icons.contact_phone_outlined,
                                color: Colors.grey[700]),
                            textInputAction: TextInputAction.next,
                          ),
                          SizedBox(
                              height: screenHeightPercentage(context, 0.04)),
                          CustomTextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            controller: _passwordController,
                            obscureText: true,
                            label: "Password",
                            prefixIcon: Icon(Icons.lock_outline,
                                color: Colors.grey[700]),
                            hint: "********",
                            suffixIcon: const VisibleWidget(),
                            textInputAction: TextInputAction.next,
                          ),
                          SizedBox(
                              height: screenHeightPercentage(context, 0.04)),
                          CustomTextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            controller: _confirmPasswordController,
                            obscureText: true,
                            label: "Confirm your password",
                            prefixIcon: Icon(Icons.lock_outline,
                                color: Colors.grey[700]),
                            hint: "********",
                            suffixIcon: const VisibleWidget(),
                            textInputAction: TextInputAction.done,
                          ),
                          SizedBox(
                            height: screenHeightPercentage(context, 0.02),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                activeColor: Colors.purple[600],
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              const Text(
                                "I have read and agree to the terms of use.",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: CustomElevatedButton(
                      onPressed: () {},
                      text: "Sign up",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
