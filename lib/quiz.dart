import 'package:flutter/material.dart';
//custom widget
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //calling custom widget from different file
        Question(questions[questionIndex]['questionText'] as String),

        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          //()=> functionName is used to call function
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
