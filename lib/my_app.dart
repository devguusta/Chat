import 'package:chat_app/core/colors/colors.dart';
import 'package:chat_app/core/const/routes.dart';
import 'package:flutter/material.dart';

import 'modules/login/presentation/login_page.dart';
import 'modules/register/presentation/register_page.dart';
import 'modules/splash/presentation/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.initial,
      routes: {
        Routes.initial: (context) => const SplashPage(),
        Routes.login: (context) => const LoginPage(),
        Routes.register: (context) => const RegisterPage(),
      },
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: kShrineBrown900,
        ),
      ),
    );
  }
}
