import 'package:flutter/material.dart';
import 'features/home/home_screen.dart';

void main() {
  runApp(const AqsaSeriesApp());
}

class AqsaSeriesApp extends StatelessWidget {
  const AqsaSeriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
