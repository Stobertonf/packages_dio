import 'package:flutter/material.dart';
import 'package:packages_dio/pages/home/home_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreenDelayPage extends StatefulWidget {
  const SplashScreenDelayPage({super.key});

  @override
  State<SplashScreenDelayPage> createState() => _SplashScreenDelayPageState();
}

class _SplashScreenDelayPageState extends State<SplashScreenDelayPage> {
  openHome() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (builder) => const HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    openHome();
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.red,
              Colors.purple,
            ],
                stops: [
              0.3,
              0.7,
            ])),
        child: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Hello!!',
                textStyle: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
                speed: const Duration(
                  milliseconds: 100,
                ),
              ),
            ],
            totalRepeatCount: 4,
            pause: const Duration(
              milliseconds: 50,
            ),
            stopPauseOnTap: true,
            displayFullTextOnTap: true,
          ),
        ),
      ),
    ));
  }
}
