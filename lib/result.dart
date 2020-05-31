import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function quizHandler;

  Result(this.totalScore, this.quizHandler);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'You are awsome and innocent!';
    } else if (totalScore <= 12) {
      resultText = 'Preety likable!';
    } else if (totalScore <= 16) {
      resultText = 'You are Strange!';
    } else {
      resultText = 'You are bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Center(
            child: Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        FlatButton(
          child: Text(
            'Restart Quiz',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          onPressed: quizHandler,
        )
      ],
    );
  }
}
