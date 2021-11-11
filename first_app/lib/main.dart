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
      "What's your favorite color?",
      "What's your favorite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            ElevatedButton(
              onPressed: _answerClickd,
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: _answerClickd,
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: _answerClickd,
              child: const Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
