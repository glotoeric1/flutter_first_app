import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totatScore;
  final Function resultHandler;

  Result(this.totatScore, this.resultHandler);

  String get resultPhrase {
    String resultText;
    if (totatScore <= 40) {
      resultText = 'You are aweson';
    } else if (totatScore <= 70) {
      resultText = 'You are a good';
    } else if (totatScore <= 80) {
      resultText = 'You are very good';
    } else if (totatScore <= 100) {
      resultText = 'You are excellent';
    } else {
      resultText = 'U did a good work';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resultHandler,
          child: Text('Reset Quiz'),
          textColor: Colors.blue,
        ),
      ],
    ));
  }
}
