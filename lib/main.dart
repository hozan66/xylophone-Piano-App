import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
// import 'package:audioplayers/audioplayers.dart'; // use file from internet
import 'package:audioplayers/audio_cache.dart'; // use local file

// 2. What are Flutter & Dart Packages
// 3. How to Play Sound Across Platforms
// 4. How to Play Multiple Sounds
// 6. Updating the UI of Our App
// 9. Refactoring Our App

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache(); //create a new player
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.pink.shade300, soundNumber: 1),
              buildKey(color: Colors.white, soundNumber: 2),
              buildKey(color: Colors.grey.shade800, soundNumber: 3),
              buildKey(color: Colors.white, soundNumber: 4),
              buildKey(color: Colors.grey.shade700, soundNumber: 5),
              buildKey(color: Colors.white, soundNumber: 6),
              buildKey(color: Colors.pink, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
