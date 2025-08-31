import 'package:flutter/material.dart';
import 'package:medix_app/views/changepassword_view.dart';
import 'package:medix_app/widgets/filledbutton_widget.dart';
import 'package:medix_app/widgets/iconbutton_widget.dart';
import 'package:medix_app/widgets/otp_widget.dart';

class VerificationcodeView extends StatelessWidget {
  const VerificationcodeView({super.key});
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
                "Verification Code",
                style: TextStyle(color: Color(0xff1E1E1E), fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                "We have sent the OTP code to your account for the verification process",
                maxLines: 3,
                style: TextStyle(color: Color(0xffACACAC), fontSize: 19),
              ),
            ),
            SizedBox(height: 16),
            OtpPageWidget(),
            SizedBox(height: 16),
            FilledbuttonWidget(
              text: "Change Passowrd",
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangePasswordView()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
