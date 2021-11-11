import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';

import './question.dart';

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

  void _answerClickd() {
    setState(() {
      _questionIndex++;
    });

    //  print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "What's your favorite color?",
        "answers": ["Black", "Blue", "Red", "Pink"]
      },
      {
        "questionText": "What's your favorite animal?",
        "answers": ["Lion", "Deer", "Rabbit", "Dog"]
      },
      {
        "questionText": "What's your favorite actor?",
        "answers": [
          "Tom Hanks",
          "Will Smith",
          "Morgan Freeman",
          "George Clooney"
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]["questionText"].toString(),
            ),
            ...(questions[_questionIndex]["answers"] as List<String>).map(
              (ans) {
                return Answer(_answerClickd, ans);
              },
            )
          ],
        ),
      ),
    );
  }
}
