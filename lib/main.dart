import "package:flutter/material.dart";

import "./question.dart";
import "./answer.dart";

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFlutterAppState();
  }
}

class _MyFlutterAppState extends State<MyFlutterApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'what\'s your favourite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'what\'s your favourite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'Who\'s your favourite Learning site?',
        'answers': ['Edx', 'Coursera', 'udemy', 'Udacity']
      }
    ];
    // var questions = [
    //   'what\'s your favourite color?',
    //   'what\'s your favourite animal?'
    // ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Flutter"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
