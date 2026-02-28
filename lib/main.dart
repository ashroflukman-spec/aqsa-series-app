import 'package:flutter/material.dart';

void main() {
  runApp(const AqsaSeriesApp());
}

class AqsaSeriesApp extends StatelessWidget {
  const AqsaSeriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0F0F0F),
        body: Center(
          child: Text(
            'Aqsa Series\nAudio Kitab & Ilmu',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
