import 'package:flutter/material.dart';

class ReaderScreen extends StatelessWidget {
  const ReaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('John 1:1-5'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implement passage picker
            },
          ),
          IconButton(
            icon: const Icon(Icons.volume_up_outlined),
            onPressed: () {
              // TODO: Implement TTS
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildTranslationChip('ESV'),
          const SizedBox(height: 16),
          _buildVerse(1, 'In the beginning was the Word, and the Word was with God, and the Word was God.'),
          _buildVerse(2, 'He was in the beginning with God.'),
          _buildVerse(3, 'All things were made through him, and without him was not any thing made that was made.'),
          _buildVerse(4, 'In him was life, and the life was the light of men.'),
          _buildVerse(5, 'The light shines in the darkness, and the darkness has not overcome it.'),
        ],
      ),
    );
  }

  Widget _buildTranslationChip(String translation) {
    return Chip(
      label: Text(translation),
      avatar: const Icon(Icons.translate, size: 18),
    );
  }

  Widget _buildVerse(int number, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 32,
            child: Text(
              '$number',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 17,
                height: 1.6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
