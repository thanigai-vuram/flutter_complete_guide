import "package:flutter/material.dart";

import "./quiz.dart";
import "./result.dart";

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFlutterAppState();
  }
}

class _MyFlutterAppState extends State<MyFlutterApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'what\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 1}
      ]
    },
    {
      'questionText': 'Who\'s your favourite Learning site?',
      'answers': [
        {'text': 'Edx', 'score': 10},
        {'text': 'Coursera', 'score': 5},
        {'text': 'Udemy', 'score': 3},
        {'text': 'Udacity', 'score': 1}
      ]
    }
  ];

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Flutter"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
