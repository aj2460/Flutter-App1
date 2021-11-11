import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback btnClickedHandler;
  Answer(this.btnClickedHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: btnClickedHandler,
        child: const Text(
          "Answer 1",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
