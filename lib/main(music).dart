//import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
// 2. What are Flutter & Dart Packages

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            //child: Text(nouns.last),
            child: Text("nouns.last"),
          ),
        ),
      ),
    );
  }
}
