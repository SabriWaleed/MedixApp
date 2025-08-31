import 'package:flutter/material.dart';
import 'package:medix_app/views/auth_view.dart';

class OnboardingScreenView extends StatefulWidget {
  const OnboardingScreenView({super.key});
  @override
  State<OnboardingScreenView> createState() => _OnboardingScreenViewState();
}

class _OnboardingScreenViewState extends State<OnboardingScreenView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<Map<String, String>> onboardingData = [
    {
      "image": "lib/assets/images/rafiki.png",
      "title": "Your Complete Healthcare System",
      "desc":
          "A smart system to manage patients, doctors, nurses, cleaners, and medicines in one place.",
    },
    {
      "image": "lib/assets/images/rafiki2.png",
      "title": "Easy Data Control",
      "desc":
          "Add, edit, or remove records for any member — with quick search and filtering by date, age, or role.",
    },
    {
      "image": "lib/assets/images/rafiki3.png",
      "title": "Smart Medicine Management",
      "desc":
          "Monitor medicine stock, request missing items, and keep your hospital always ready.",
    },
  ];
  void _nextPage() {
    if (_currentPage < onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeIn,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AuthView()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardingData.length,
              onPageChanged: (int index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      onboardingData[index]["image"]!,
                      width: 700,
                      height: 250,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        onboardingData[index]["title"]!,
                        style: const TextStyle(
                          color: Color(0xff1E1E1E),
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        onboardingData[index]["desc"]!,
                        style: const TextStyle(
                          color: Color(0xff1E1E1E),
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onboardingData.length,
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 20,
                          ),
                          width: _currentPage == index ? 8 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: _currentPage == index
                                ? Colors.blue
                                : Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16),
        child: FloatingActionButton(
          onPressed: _nextPage,
          backgroundColor: const Color(0xffFFFFFF),
          elevation: 0,
          child: Text(
            "Next",
            style: const TextStyle(color: Color(0xff1E1E1E), fontSize: 20),
          ),
        ),
      ),
    );
  }
}
