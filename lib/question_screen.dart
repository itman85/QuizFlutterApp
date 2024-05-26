import 'package:flutter/material.dart';
import 'package:quizflutterapp/answer_button.dart';
import 'package:quizflutterapp/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity, // infinity: use as much width as it can
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            // spreding values (...) add a list as multiple individual values into the container list
            ...currentQuestion.answers.map((item) {
              return AnswerButton(answerText: item, onTap: () {});
            })
          ],
        ),
      ),
    );
  }
}
