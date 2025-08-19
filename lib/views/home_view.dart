import 'package:flutter/material.dart';
import 'package:medix_app/views/login_view.dart';
import 'package:medix_app/views/signup_view.dart';
import 'package:medix_app/widgets/filledbutton_widget.dart';
import 'package:medix_app/widgets/outlinedbutton_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          SizedBox(height: 90),
          Image.asset(
            "lib/assets/images/thumbnail.png",
            width: 150,
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome To Medix !",
                style: TextStyle(
                  color: Color(0xff1E1E1E),
                  fontWeight: FontWeight.w400,
                  height: 0,
                  fontSize: 24,
                ),
              ),
              Image.asset(
                "lib/assets/images/tdesign_wave-bye.png",
                height: 30,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(height: 40),
          OutlinedbuttonWidget(
            text: "Sign Up with Email",
            icon: "lib/assets/images/Vector (5).png",
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupView()),
              );
            },
          ),
          OutlinedbuttonWidget(
            text: "Sign Up with Google",
            icon: "lib/assets/images/devicon_google.png",
            onpressed: () {
              //مؤقت
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupView()),
              );
            },
          ),
          OutlinedbuttonWidget(
            text: "Sign Up with Facebook",
            icon: "lib/assets/images/logos_facebook.png",
            onpressed: () {
              //مؤقت
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupView()),
              );
            },
          ),
          SizedBox(height: 60),
          Row(
            children: [
              Expanded(child: Divider(color: Color(0xffE0E0E0), thickness: 1)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "OR",
                  style: TextStyle(
                    color: Color(0xffE0E0E0),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Expanded(child: Divider(color: Color(0xffE0E0E0), thickness: 1)),
            ],
          ),
          SizedBox(height: 60),
          FilledbuttonWidget(
            text: "Login to my Account",
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
