import 'package:flutter/material.dart';

// void main() {
//   runApp(myApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerClickd() {
    setState(() {
      questionIndex++;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite anima?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(
          children: <Widget>[
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: answerClickd,
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: answerClickd,
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: answerClickd,
              child: const Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
