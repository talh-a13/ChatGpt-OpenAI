import 'package:chatbot_dialogflow/constant.dart';
import 'package:chatbot_dialogflow/sidebar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      backgroundColor: staticBackgroundColor,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(builder: (context) {
                  return IconButton(
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                }),
                const Image(
                  image: AssetImage("images/chatgpt.png"),
                  height: 65,
                ),
                const Icon(
                  Icons.more_vert,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
