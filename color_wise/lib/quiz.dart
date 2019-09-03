import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final questionNumber;
  final Function answerQuestion;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionNumber});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // =======================Question Widget================================
        Question(questions[questionNumber]['questionText']),
        // =======================Answer Widget================================
        // Answer comp or class receives _answerQuestion as props from the root Class(MyApp)
        // Use spread operator(...) bcos the 'map' that we change to a list has tobe a standalone
        // List inside the 'Column' widget, it should contain lists as children.
        ...(questions[questionNumber]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
