import 'package:flutter/material.dart';
import 'package:medix_app/views/home_screen.dart';
import 'package:medix_app/views/nurse_view.dart';
import 'package:medix_app/views/profile_screen.dart';
import 'package:medix_app/views/service_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 1;

  final List<Widget> screens = [
    const ServicesView(),
    const HomeView(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedFontSize: 16,
          unselectedFontSize: 14,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedItemColor: const Color(0xff2D9CDB),
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "lib/assets/images/book.png",
                width: 30,
                height: 30,
              ),
              activeIcon: Image.asset(
                "lib/assets/images/book (1).png",
                width: 30,
                height: 30,
              ),
              label: "Services",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "lib/assets/images/home-2 (1).png",
                width: 30,
                height: 30,
              ),
              activeIcon: Image.asset(
                "lib/assets/images/home-2 (2).png",
                width: 30,
                height: 30,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "lib/assets/images/profile-circle.png",
                width: 30,
                height: 30,
              ),
              activeIcon: Image.asset(
                "lib/assets/images/profile-circle (1).png",
                width: 30,
                height: 30,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
