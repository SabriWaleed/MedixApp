import 'package:flutter/material.dart';
import 'package:medix_app/views/verificationcode_view.dart';
import 'package:medix_app/widgets/filledbutton_widget.dart';
import 'package:medix_app/widgets/iconbutton_widget.dart';
import 'package:medix_app/widgets/textfield_widget.dart';

class ForgetpasswordView extends StatelessWidget {
  const ForgetpasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconbuttonWidget()
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Forget Password",
                style: TextStyle(color: Color(0xff1E1E1E), fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                "Reset your account password and access your personal account again.",
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
            SizedBox(height: 16),
            FilledbuttonWidget(
              text: "Send Code",
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VerificationcodeView(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
