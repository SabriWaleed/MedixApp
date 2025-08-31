import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPageWidget extends StatelessWidget {
  const OtpPageWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        obscureText: false,
        keyboardType: TextInputType.number,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(8),
          fieldHeight: 80,
          fieldWidth: 80,
          inactiveColor: Colors.grey,
          activeColor: Color(0xff2D9CDB),
          selectedColor: Color(0xff2D9CDB),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
