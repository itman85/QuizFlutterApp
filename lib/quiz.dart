import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizflutterapp/question_screen.dart';
import 'package:quizflutterapp/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

// underscore makes this class be private
class _QuizState extends State<Quiz> {
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 78, 13, 190),
        Color.fromARGB(255, 107, 58, 224)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: activeScreen == 'start-screen'
          ? StartScreen(switchScreen)
          : const QuestionScreen(),
    )));
  }
}
