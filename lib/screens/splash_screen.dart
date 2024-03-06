import 'package:flutter/material.dart';
import 'package:lonsum_app/screens/auth/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> opacity;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 2500), vsync: this);
    opacity = Tween<double>(begin: 1.0, end: 0.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward().then((_) {
      navigationPage();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void navigationPage() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const WelcomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 140,
        height: 200,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/logo_lonsum.png"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
