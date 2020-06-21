import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final Object answerText;

  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText.toString()),
        onPressed: answerHandler,
      ),
    );
  }
}
