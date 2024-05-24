import 'package:flutter/material.dart';
import 'package:quizflutterapp/start_screen.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 78, 13, 190),
          Color.fromARGB(255, 107, 58, 224)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: const StartScreen()),
  )));
}
