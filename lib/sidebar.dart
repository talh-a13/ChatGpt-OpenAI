import 'package:chatbot_dialogflow/constant.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                color: staticBackgroundColor,
              ),
              child: Column(
                children: [
                  Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintText: "Search Here",
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(
                              color: Colors
                                  .white, // Color of the border when focused
                              width: 1,
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Column(
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('images/1.png'),
                            height: 30,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "ChatGPT",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
          ListTile(
            title: const Text('Today'),
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          ListTile(
            title: const Text(
              'Fring Field Explained',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          ListTile(
            title: const Text(
              'Icon Inquiry Response',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          const Divider(
            color: Colors.black, // Set the color of the line
            indent: 15, // Start the line after an empty space of 10 pixels
            endIndent: 15,
          ),
          ListTile(
            title: const Text(' Yesterday'),
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          ListTile(
            title: const Text(
              'Graphite Uses Overwiew',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          ListTile(
            title: const Text(
              'Gradle Time out Error Fix',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          ListTile(
            title: const Text(
              'Error handling in GetUserApi',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          ListTile(
            title: const Text(
              'Model Set Context Expalaination',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          ListTile(
            title: const Text(
              'Checking recent well being',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          ListTile(
            title: const Text(
              'RUB TO PKR Conversion ',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          const Divider(
            color: Colors.black, // Set the color of the line
            indent: 15, // Start the line after an empty space of 10 pixels
            endIndent: 15,
          ),
          ListTile(
            title: const Text(
              'Previous 7 days ',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
            ListTile(
            title: const Text(
              'Rain On Others Planets',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
        ],
      ),
    );
  }
}
