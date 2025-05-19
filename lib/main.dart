import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:fanshot/app/screens/onboarding.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [GetPage(name: '/', page: () => OnboardingPage())],
    );
  }
}
