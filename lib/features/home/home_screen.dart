import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aqsa Series'),
      ),
      body: const Center(
        child: Text(
          'Home Screen Ready',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
