import "package:flutter/material.dart";

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyFlutterAppState();
  }
}

class MyFlutterAppState extends State<MyFlutterApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourite color?',
      'what\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Flutter"),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print("hello"),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print("hello all"),
            ),
          ],
        ),
      ),
    );
  }
}

