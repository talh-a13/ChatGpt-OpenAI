import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  const SquareTile({super.key, required this.imagepath});

  final String imagepath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
    border: Border.all(color: Colors.white70),
    borderRadius: BorderRadius.circular(16),
    color: Colors.white70
      ),
      child: Image.asset(imagepath,height: 40,),
    );
  }
}
