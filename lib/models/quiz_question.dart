class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswer() {
    // in this way, it copy the original list to do shuffle on new list without modifying the original one
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
