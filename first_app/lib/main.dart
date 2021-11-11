import 'package:flutter/material.dart';

import './quiz.dart';
import "./result.dart";

// void main() {
//   runApp(myApp());
// }

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

  void _answerClickd(int score) {
    _totalScore += score;
    print(_totalScore);
    setState(() {
      _questionIndex++;
    });

    //  print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        "questionText": "What's your favorite color?",
        "answers": [
          {"text": "Black", "score": 10},
          {"text": "Blue", "score": 6},
          {"text": "Red", "score": 8},
          {"text": "Pink", "score": 4}
        ]
      },
      {
        "questionText": "What's your favorite animal?",
        "answers": [
          {"text": "Lion", "score": 10},
          {"text": "Deer", "score": 6},
          {"text": "Rabbit", "score": 4},
          {"text": "Dog", "score": 1}
        ]
      },
      {
        "questionText": "What's your favorite actor?",
        "answers": [
          {"text": "Tom Hanks", "score": 1},
          {"text": "Will Smith", "score": 2},
          {"text": "Morgan Freeman", "score": 1},
          {"text": "George Clooney", "score": 2}
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerBtnClickedHandler: _answerClickd,
                questions: _questions,
                questionIdx: _questionIndex)
            : Result(),
      ),
    );
  }
}
