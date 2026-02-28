import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aqsa Series'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          SeriesCard(
            title: 'Perancangan Strategik Pembebasan Baitulmaqdis',
            subtitle: 'Kupasan strategik & sejarah pembebasan',
          ),
          SeriesCard(
            title: 'Isra’ Mikraj – Batu Loncatan Dakwah',
            subtitle: 'Titik lonjakan pembinaan ummah',
          ),
          SeriesCard(
            title: 'Peranan Ummah Dalam Pembebasan',
            subtitle: 'Tanggungjawab individu & masyarakat',
          ),
        ],
      ),
    );
  }
}

class SeriesCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const SeriesCard({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          // Langkah seterusnya: buka detail / player
        },
      ),
    );
  }
}
