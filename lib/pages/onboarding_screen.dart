import 'package:flutter/material.dart';

import 'home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 2),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              "assets/images/onboarding.jpeg",
              width: size.width * 0.6,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          const Text(
            "Podkes",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.02),
            child: const Text(
              "A podcast is an episodic series of spoken word digital audio files that a user can download.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const HomeScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: EdgeInsets.all(size.width * 0.05),
              backgroundColor: Colors.white,
            ),
            child: const Icon(Icons.arrow_forward, color: Colors.deepPurple),
          ),
          SizedBox(height: size.height * 0.03),
        ],
      ),
    );
  }
}
