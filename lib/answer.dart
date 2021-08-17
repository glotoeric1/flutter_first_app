import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectedHandler;
  final String answerText;

  Answer(this.selectedHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        //calling this.answer text
        child: Text(answerText),
        onPressed: selectedHandler,
      ),
    );
  }
}
