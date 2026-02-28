import 'package:flutter/material.dart';
import 'features/home/home_screen.dart';

void main() {
  runApp(const AqsaSeriesApp());
}

class AqsaSeriesApp extends StatelessWidget {
  const AqsaSeriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,

        // 🌑 Warna asas
        scaffoldBackgroundColor: const Color(0xFF0F0F0F),

        // 🔴 Identiti Aqsa (maroon)
        primaryColor: const Color(0xFF7A1F2B),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF7A1F2B),
          secondary: Color(0xFFB23A48),
        ),

        // 🧾 AppBar
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF121212),
          elevation: 0,
          centerTitle: true,
        ),

        // 📄 Card
        cardTheme: const CardTheme(
          color: Color(0xFF1A1A1A),
          elevation: 2,
          margin: EdgeInsets.zero,
        ),

        // ✍️ Teks
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            height: 1.4,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
