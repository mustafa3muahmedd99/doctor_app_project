import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const Profile({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
        ),
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
