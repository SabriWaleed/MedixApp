import 'package:flutter/material.dart';
import 'package:medix_app/views/login_view.dart';
import 'package:medix_app/widgets/filledbutton_widget.dart';
import 'package:medix_app/widgets/textfield_widget.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

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
      body: ListView(
        children: [
          Center(
            child: Text(
              "Create Your Account",
              style: TextStyle(color: Color(0xff1E1E1E), fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Text(
              "Create your personal account now to access all the exclusive benefits we have to offer",
              maxLines: 3,
              style: TextStyle(color: Color(0xffACACAC), fontSize: 19),
            ),
          ),
          SizedBox(height: 16),
          TextfieldWidget(text: "First Name"),
          TextfieldWidget(text: "Last Name"),
          TextfieldWidget(text: "Email"),
          TextfieldWidget(text: "Password",image: "lib/assets/images/solar_eye-linear.png",),
          TextfieldWidget(text: "Confirm Password"),
          SizedBox(height: 16),
          FilledbuttonWidget(text: "Create account",onpressed: (){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupView()),///////////////////////////////////////////مؤقت
              );},),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account !",
                style: TextStyle(color: Color(0xff8A7F7F), fontSize: 19),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginView()),
                  );
                },
                child: Text(
                  "Log In",
                  style: TextStyle(color: Color(0xff1E1E1E), fontSize: 19),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
