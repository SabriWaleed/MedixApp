import 'package:flutter/material.dart';

class OutlinedbuttonWidget extends StatelessWidget {
  const OutlinedbuttonWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.onpressed,
  });
  final String text;
  final String icon;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          fixedSize: Size(385, 80),
          side: const BorderSide(color: Color(0xff2D9CDB), width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          onpressed();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, height: 24, fit: BoxFit.contain),
            SizedBox(width: 12),
            Text(
              text,
              style: TextStyle(
                color: Color(0xff1E1E1E),
                fontWeight: FontWeight.w400,
                height: 0,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
