import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import '../../models/audio_tag.dart';
import '../../core/tag_storage.dart';

class AudioPlayerScreen extends StatefulWidget {
  final String title;
  final String description;

  const AudioPlayerScreen({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  final AudioPlayer _player = AudioPlayer();

  List<AudioTag> _tags = [];
  bool _loadingTags = true;

  // ✅ MARKER FUNCTION MESTI DI SINI
  Widget _buildMarkers(Duration total) {
    if (_tags.isEmpty || total.inSeconds == 0) {
      return const SizedBox();
    }

    return Positioned.fill(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;

          return Stack(
            children: _tags.map((tag) {
              final ratio = tag.position / total.inSeconds;
              final left = ratio * width;

              return Positioned(
                left: left,
                top: 8,
                child: GestureDetector(
                  onTap: () {
                    _player.seek(
                      Duration(seconds: tag.position),
                    );
                  },
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                      color: Color(0xFF7A1F2B),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // UI
  }
}
