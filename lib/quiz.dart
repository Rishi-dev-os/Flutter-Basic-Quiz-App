import 'package:flutter/material.dart';
import './answere.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function functionHandler;

  Quiz(
      {@required this.functionHandler,
      @required this.questionIndex,
      @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionKey']),
        ...(questions[questionIndex]['answereKey'] as List<Map<String, Object>>)
            .map((answere) {
          return Answere(
              () => functionHandler(answere['score']), answere['text']);
        }).toList(),
      ],
    );
  }
}
