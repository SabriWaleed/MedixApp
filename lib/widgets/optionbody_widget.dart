import 'package:flutter/material.dart';

class OptionbodyWidget extends StatelessWidget {
  const OptionbodyWidget({
    super.key,
    required this.text,
    this.isSelected = false,
    required this.isFirst,
    required this.isLast,
  });
  final String text;
  final bool isSelected;
  final bool isFirst;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: isFirst ? 16 : 4,
        top: 8,
        bottom: 8,
        right: isLast ? 16 : 4,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Color(0xff2D9CDB) : Colors.white,
            border: Border.all(color: Color(0xff2D9CDB), width: 2),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: isSelected ? Colors.white : Color(0xff2D9CDB),
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
