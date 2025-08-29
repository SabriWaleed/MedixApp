import 'package:flutter/material.dart';
import 'package:medix_app/widgets/search_widget.dart';

class RowsearchandiconWidget extends StatelessWidget {
  const RowsearchandiconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: SearchWidget(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, left: 5),
                child: Image.asset(
                  "lib/assets/images/filter-tick.png",
                  width: 30,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          );
  }
}