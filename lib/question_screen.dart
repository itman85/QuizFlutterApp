import 'package:flutter/material.dart';
import 'package:quizflutterapp/answer_button.dart';
import 'package:quizflutterapp/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    // update widget state every time this function called
    setState(() {
      currentQuestionIndex += 1; // or ++
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

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
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            // spreding values (...) add a list as multiple individual values into the container list
            ...currentQuestion.getShuffledAnswer().map((item) {
              return AnswerButton(answerText: item, onTap: answerQuestion);
            })
          ],
        ),
      ),
    );
  }
}
