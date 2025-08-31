import 'package:flutter/material.dart';

class IconbuttonWidget extends StatelessWidget {
  const IconbuttonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
          icon: Image.asset(
            "lib/assets/images/Vector (6).png",
            color: Colors.blue,
            width: 20,
            height: 20,
            fit: BoxFit.contain,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        );
  }
}