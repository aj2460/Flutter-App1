import 'package:flutter/material.dart';

import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  final VoidCallback answerBtnClickedHandler;
  final List<Map<String, Object>> questions;
  var questionIdx;

  Quiz(this.answerBtnClickedHandler, this.questions, this.questionIdx);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIdx]["questionText"].toString(),
        ),
        ...(questions[questionIdx]["answers"] as List<String>).map(
          (ans) {
            return Answer(answerBtnClickedHandler, ans);
          },
        )
      ],
    );
  }
}
