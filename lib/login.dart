// ignore_for_file: prefer_const_constructors

import 'package:chatbot_dialogflow/constant.dart';
import 'package:chatbot_dialogflow/home_page.dart';
import 'package:chatbot_dialogflow/square_tile.dart';
import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: staticBackgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Image(
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
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: const TextStyle(color: Colors.white70),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400))),
                style: TextStyle(color: Colors.white70),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: TextField(
                  style: TextStyle(color: Colors.white70),
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.white70),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 220),
                child: Text(
                  "Forgot Password ? ",
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
                },
                child: Container(
                  padding: EdgeInsets.all(22),
                  margin: EdgeInsets.symmetric(horizontal: 35),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              const Padding(
                padding: EdgeInsets.all(24),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      " Or Continue With ",
                      style: TextStyle(color: Colors.white70),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagepath: 'images/google.png'),
                  SizedBox(
                    width: 30,
                  ),
                  SquareTile(imagepath: 'images/apple.png')
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member ?",
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    " Register Now ",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
