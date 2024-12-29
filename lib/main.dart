import 'package:flutter/material.dart';

import 'audio_books_home_page.dart';

void main() {
  runApp(const AudioBooksApp());
}

class AudioBooksApp extends StatelessWidget {
  const AudioBooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AudioBooksHomePage(),
    );
  }
}
