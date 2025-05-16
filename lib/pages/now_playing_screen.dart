import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NowPlayingScreen extends StatelessWidget {
  const NowPlayingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text("Now Playing")),
      body: Column(
        children: [
          SizedBox(height: size.height * 0.03),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset("assets/images/podcast1.jpeg", width: size.width * 0.6),
          ),
          SizedBox(height: size.height * 0.03),
          const Text(
            "The missing 96 percent of the universe",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          const Text("Claire Malone", style: TextStyle(color: Colors.grey)),
          SizedBox(height: size.height * 0.03),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
            child: const LinearProgressIndicator(
              value: 24.32 / 34.00,
              color: Colors.white,
              backgroundColor: Colors.grey,
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("24:32"),
                Text("34:00"),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.skip_previous, size: size.width * 0.1),
              SizedBox(width: size.width * 0.08),
              Icon(Icons.play_circle_fill, size: size.width * 0.15),
              SizedBox(width: size.width * 0.08),
              Icon(Icons.skip_next, size: size.width * 0.1),
            ],
          ),
          SizedBox(height: size.height * 0.04),
        ],
      ),
    );
  }
}
