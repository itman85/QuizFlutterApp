import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
        ),
        const SizedBox(
          height: 32,
        ),
        const Text(
          'Learn Flutter',
          style: TextStyle(color: Colors.white60, fontSize: 24),
        ),
        const SizedBox(
          height: 32,
        ),
        OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            child: const Text('Start Quiz'))
      ],
    ));
  }
}
