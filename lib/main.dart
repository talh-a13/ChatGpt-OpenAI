import 'package:chatbot_dialogflow/constant.dart';
import 'package:chatbot_dialogflow/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " ChatGpt - Open Ai ",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: staticBackgroundColor),
      home: const SplashScreen(),
    );
  }
}
