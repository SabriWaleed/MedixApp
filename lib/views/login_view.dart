import 'package:flutter/material.dart';
import 'package:medix_app/widgets/filledbutton_widget.dart';
import 'package:medix_app/widgets/textfield_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Image.asset(
            "lib/assets/images/Vector (6).png",
            color: Colors.blue,
            width: 20,
            height: 20,
            fit: BoxFit.contain,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Log In",
                style: TextStyle(color: Color(0xff1E1E1E), fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                "Welcome Back to Medix ! come on now to continue your adventure to find the perfect property",
                maxLines: 3,
                style: TextStyle(color: Color(0xffACACAC), fontSize: 19),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 12),
              child: Text(
                "Email",
                style: TextStyle(color: Color(0xff1E1E1E), fontSize: 22),
              ),
            ),
            TextfieldWidget(text: "Email"),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 12),
              child: Text(
                "Password",
                style: TextStyle(color: Color(0xff1E1E1E), fontSize: 22),
              ),
            ),
            TextfieldWidget(
              text: "Password",
              image: "lib/assets/images/solar_eye-linear.png",
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forget Password ",
                  style: TextStyle(
                    color: Color(0xffACACAC),
                    fontSize: 22,
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xffACACAC),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            FilledbuttonWidget(text: "Log In"),
          ],
        ),
      ),
    );
  }
}
