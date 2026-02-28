import 'package:flutter/material.dart';
import '../../core/api_service.dart';
import '../../models/series.dart';
import '../player/audio_player_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aqsa Series'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Series>>(
        future: ApiService.fetchSeries(),
        builder: (context, snapshot) {
          // 1) Loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          // 2) Error
          if (snapshot.hasError) {
            return const Center(
              child: Text('Ralat memuat data siri'),
            );
          }

          // 3) Data kosong
          final seriesList = snapshot.data;
          if (seriesList == null || seriesList.isEmpty) {
            return const Center(
              child: Text('Tiada siri ditemui'),
            );
          }

          // 4) Papar senarai siri
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: seriesList.length,
            itemBuilder: (context, index) {
              final series = seriesList[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  title: Text(
                    series.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    series.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text('${series.totalEpisodes} Bab'),
                  onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => AudioPlayerScreen(
        title: series.title,
        description: series.description,
      ),
    ),
  );
},
