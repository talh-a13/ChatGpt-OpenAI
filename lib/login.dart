import 'package:chatbot_dialogflow/constant.dart';
import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: staticBackgroundColor,
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Image(
              image: AssetImage('images/chatgpt.png'),
              width: 150,
              height: 100,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Welcome Back You have been missed !",
              style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
