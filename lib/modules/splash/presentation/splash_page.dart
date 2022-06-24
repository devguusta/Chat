import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation sizeAnimation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    sizeAnimation = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 100.0, end: 300.0), weight: 1),
    ]).animate(controller);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });

    controller.addListener(() {
      setState(() {});
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Welcome to Smart Talk",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Image.asset(
              'assets/images/splash.png',
              width: sizeAnimation.value,
              height: sizeAnimation.value,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Smartest Chat Application",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator(),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
