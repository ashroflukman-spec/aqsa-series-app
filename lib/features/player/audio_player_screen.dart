import 'package:flutter/material.dart';

class AudioPlayerScreen extends StatelessWidget {
  final String title;
  final String description;

  const AudioPlayerScreen({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Now Playing'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cover placeholder
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                Icons.headphones,
                size: 80,
                color: Colors.white54,
              ),
            ),

            const SizedBox(height: 24),

            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              description,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),

            const Spacer(),

            // Player controls
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.skip_previous, color: Colors.white, size: 40),
                SizedBox(width: 24),
                Icon(Icons.play_circle_fill,
                    color: Colors.redAccent, size: 72),
                SizedBox(width: 24),
                Icon(Icons.skip_next, color: Colors.white, size: 40),
              ],
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
