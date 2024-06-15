import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizflutterapp/question_screen.dart';
import 'package:quizflutterapp/start_screen.dart';
import 'package:quizflutterapp/data/questions.dart';
import 'package:quizflutterapp/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

// underscore makes this class be private
class _QuizState extends State<Quiz> {
  final List<String> _selectedAnswers = [];
  var _activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      _activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);
    if (_selectedAnswers.length == questions.length) {
      setState(() {
        _activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      _activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (_activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    } else if (_activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: _selectedAnswers,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
        home: Scaffold(
            body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 78, 13, 190),
        Color.fromARGB(255, 107, 58, 224)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: screenWidget,
    )));
  }
}
