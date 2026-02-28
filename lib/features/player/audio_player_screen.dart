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
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: const TextStyle(color: Colors.white70),
            ),
            const Spacer(),
            const Center(
              child: Icon(
                Icons.play_circle_fill,
                color: Colors.redAccent,
                size: 80,
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
