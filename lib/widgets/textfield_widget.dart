import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({super.key, required this.text, this.image});
  final String text;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: text,
          hintStyle: TextStyle(color: Color(0xffACACAC)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xff2D9CDB)),
          ),
          suffixIcon: image != null
              ? Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    image!,
                    width: 24,
                    height: 24,
                    fit: BoxFit.contain,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
