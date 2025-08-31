import 'package:flutter/material.dart';
import 'package:medix_app/widgets/appbar_widget.dart';
import 'package:medix_app/widgets/bodydoctor_widget.dart';

class DoctorsView extends StatelessWidget {
  const DoctorsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppbarWidget(),
      body: BodydoctorWidget(),
    );
  }
}
