import 'package:flutter/material.dart';
import 'package:plantapp/ui/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Plantas Ecommercee",
      home: OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


