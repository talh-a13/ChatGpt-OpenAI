import 'dart:async';

import 'package:chatbot_dialogflow/home_page.dart';
import 'package:chatbot_dialogflow/login.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    _animation = CurvedAnimation(
        parent: _controller, curve: Curves.fastEaseInToSlowEaseOut);

    _controller.forward();

    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const loginpage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Sidebar(),
      body: ScaleTransition(
        scale: _animation,
        child: Center(
          child: Hero(
            tag: "logo",
            child: SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "images/chatgpt.png",
                )),
          ),
        ),
      ),
    );
  }
}