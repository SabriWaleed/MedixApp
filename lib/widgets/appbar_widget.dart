import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      titleSpacing: 10,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Image.asset(
          "lib/assets/images/Frame 41.png",
          width: 49,
          height: 49,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Hello ,",
            style: TextStyle(
              color: Color(0xffACACAC),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "Ahmed Abdo ",
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 9),
          child: Image.asset(
            "lib/assets/images/notification-bing.png",
            width: 49,
            height: 49,
          ),
        ),
      ],
    );
  }
}
