import 'package:flutter/material.dart';
import 'package:template_project/view/screens/onboarding/onboarding.dart';
import 'package:template_project/view/screens/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter Demo', debugShowCheckedModeBanner: false, home: OnboardingScreen());
  }
}
