import 'package:flutter/material.dart';
import 'package:flutterpractise/quiz/quiz.dart';
import 'package:flutterpractise/result/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  var questions = [
    {
      'question': 'What\'s your name?',
      'answers': [
        {'text': 'alpha', 'score': 10},
        {'text': 'bravo', 'score': 5},
        {'text': 'charlie' , 'score': 3}
      ]
    },
    {
      'question': 'What\'s your age?',
      'answers': [
      {'text': '21', 'score': 10},
      {'text': '22', 'score': 8},
      {'text': '23', 'score': 6},
      {'text': '24', 'score': 4},
      {'text': '25', 'score': 2}
      ]
    },
    {
      'question': 'What\'s your city?',
      'answers': [
        {'text': 'London', 'score': 10},
        {'text': 'Manchester', 'score': 5},
        {'text': 'Glasgow' , 'score': 3}]
    },
  ];

  void _resetQuiz(){
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });

  }
  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex +1;
    });

    if(_questionIndex < questions.length) {
      print('More questions comming');
    } else {
      print('You did it');
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body:
        _questionIndex < questions.length ?
        Quiz(
          questions: questions,
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,) :
        Result(_totalScore, _resetQuiz)
      ),
    );
  }
}
