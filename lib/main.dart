import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _quizRestart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answereQuestion(int score) {
    _totalScore += score;

    if (_questionIndex < _question.length) {
      print('We have more question to answere.');
    } else {
      print('We do not have any question ');
    }

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_totalScore);
    print(_questionIndex);
  }

  var _question = [
    {
      'questionKey': 'What\'s your favourite color ?',
      'answereKey': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionKey': 'What\'s your favourite Animal ?',
      'answereKey': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionKey': 'What\'s your favourite Bird ?',
      'answereKey': [
        {'text': 'Peacock', 'score': 9},
        {'text': 'Pegion', 'score': 4},
        {'text': 'Parrot', 'score': 1},
        {'text': 'Owl', 'score': 3},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QUIZ'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                functionHandler: _answereQuestion,
                questionIndex: _questionIndex,
                questions: _question,
              )
            : Result(_totalScore, _quizRestart),
      ),
    );
  }
}

class RaiseBu {}
