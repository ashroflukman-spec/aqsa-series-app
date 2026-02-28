import 'package:flutter/material.dart';
import '../../core/api_service.dart';
import '../../models/series.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aqsa Series'),
        centerTitle: false,
      ),
      body: FutureBuilder<List<Series>>(
        future: ApiService.fetchSeries(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(
              child: Text('Ralat memuat data'),
            );
          }

          final seriesList = snapshot.data!;
          return ListView.builder(
            itemCount: seriesList.length,
            itemBuilder: (context, index) {
              final s = seriesList[index];
              return Card(
                margin: const EdgeInsets.all(12),
                child: ListTile(
                  title: Text(
                    s.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    s.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text('${s.totalEpisodes} Bab'),
                  onTap: () {
                    // D2: masuk Library Screen
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
