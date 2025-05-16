import 'package:example_project/pages/now_playing_screen.dart';
import 'package:flutter/material.dart';
import '../constants/podcast_constans.dart';
import '../widgets/category_chip.dart';
import '../widgets/my_search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Podkes"),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.04),
        child: Column(
          children: [
            MySearchWidget(),
            SizedBox(height: size.height * 0.02),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryChip(label: 'All'),
                CategoryChip(label: 'Life'),
                CategoryChip(label: 'Comedy'),
                CategoryChip(label: 'Tech'),
              ],
            ),
            SizedBox(height: size.height * 0.02),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Trending", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: size.height * 0.015),
            Expanded(
              child: GridView.builder(
                itemCount: podcastList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: size.width > 600 ? 3 : 2, // Daha büyük ekranlarda 3 sütun
                  childAspectRatio: 0.75,
                  crossAxisSpacing: size.width * 0.03,
                  mainAxisSpacing: size.height * 0.02,
                ),
                itemBuilder: (context, index) {
                  final podcast = podcastList[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const NowPlayingScreen()),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            podcast['image']!,
                            fit: BoxFit.cover,
                            height: size.width * 0.35,
                            width: double.infinity,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          podcast['title']!,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          podcast['author']!,
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


