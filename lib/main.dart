import 'package:example_project/pages/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PodkesApp());
}

class PodkesApp extends StatelessWidget {
  const PodkesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Podkes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF11101D),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      home: const OnboardingScreen(),
    );
  }
}