import 'package:flutter/material.dart';

class ServiceDetailsView extends StatelessWidget {
  final String serviceName;
  const ServiceDetailsView({super.key, required this.serviceName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, title: Text(serviceName)),
      body: Center(
        child: Text(
          "Welcome to $serviceName service",
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
