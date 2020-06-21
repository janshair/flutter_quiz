import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultText {
    String resultPhrase;
    if(resultScore <= 12) {
      resultPhrase = 'awesome';
    } else if (resultScore <= 16) {
      resultPhrase = 'likable';
    } else if (resultScore <= 20) {
      resultPhrase = 'strange';
    } else {
      resultPhrase = 'bad';
    }
    return 'You are $resultPhrase , your score is $resultScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
       children: <Widget>[
      Text(resultText,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
      )
      ),
         RaisedButton(child: Text('Restart Quiz'),
         textColor: Colors.blue,
         onPressed: resetQuiz,)
       ],
       ),
      );
  }
}
