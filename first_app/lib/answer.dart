import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback btnClickedHandler;
  final String answerText;
  Answer(this.btnClickedHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: btnClickedHandler,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
