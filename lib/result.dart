import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;

  Result(this.resultScore, this.restartQuiz);

  String get resultPhrase {
    var resultText = "You did it";
    if (resultScore <= 8) {
      resultText = "You are awesome!!!";
    } else if (resultScore <= 12) {
      resultText = "Pretty likeable";
    } else if (resultScore <= 16) {
      resultText = "Strange ?";
    } else
      resultText = "So bad!!!";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: restartQuiz,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
