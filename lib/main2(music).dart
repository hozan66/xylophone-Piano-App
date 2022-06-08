import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
// import 'package:audioplayers/audioplayers.dart'; // use file from internet
import 'package:audioplayers/audio_cache.dart'; // use local file

// 2. What are Flutter & Dart Packages
// 3. How to Play Sound Across Platforms

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              onPressed: (){
                final player = AudioCache(); //create a new player
                // call this method when desired
                player.play('note1.wav'); //direction of the file is already set up
              },
              child: Text("Click Me!"),
            ),
          ),
        ),
      ),
    );
  }
}
