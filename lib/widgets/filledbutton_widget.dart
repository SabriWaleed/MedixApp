import 'package:flutter/material.dart';

class FilledbuttonWidget extends StatelessWidget {
  const FilledbuttonWidget({
    super.key,
    required this.text,
    required this.onpressed,
  });
  final String text;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: FilledButton(
        onPressed: () {
          onpressed();
        },
        style: OutlinedButton.styleFrom(
          fixedSize: Size(385, 70),
          backgroundColor: Color(0xff2D9CDB),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(text, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
