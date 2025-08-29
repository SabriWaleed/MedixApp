import 'package:flutter/material.dart';
import 'package:medix_app/views/doctors_view.dart';
import 'package:medix_app/views/service_view.dart';

class BottomnavigationbarWidget extends StatefulWidget {
  const BottomnavigationbarWidget({super.key});
  @override
  State<BottomnavigationbarWidget> createState() =>
      _BottomnavigationbarWidgetState();
}

class _BottomnavigationbarWidgetState extends State<BottomnavigationbarWidget> {
  int currentindex = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: BottomNavigationBar(
        selectedFontSize: 20,
        unselectedFontSize: 20,

        onTap: (index) {
          setState(() {
            currentindex = index;
          });
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DoctorsView(),
              ), ////////////////////////مؤقت
            );
          }
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DoctorsView(),
              ), ////////////////////////مؤقت
            );
          }
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServicesView()),
            );
          }
        },
        currentIndex: currentindex,
        selectedItemColor: Color(0xff2D9CDB),
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "lib/assets/images/profile-circle (1).png",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            icon: Image.asset(
              "lib/assets/images/profile-circle.png",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            label: "Profile",
          ),

          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "lib/assets/images/home-2 (2).png",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            icon: Image.asset(
              "lib/assets/images/home-2 (1).png",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "lib/assets/images/book (1).png",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            icon: Image.asset(
              "lib/assets/images/book.png",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            label: "Services",
          ),
        ],
      ),
    );
  }
}
