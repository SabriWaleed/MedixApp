import 'package:flutter/material.dart';
import 'package:medix_app/widgets/appbar_widget.dart';
import 'package:medix_app/widgets/bodynurse_widget.dart';

class NurseView extends StatelessWidget {
  const NurseView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppbarWidget(),
      body: BodyNurseWidget(),
    );
  }
}
