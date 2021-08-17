import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

//importing file or custom widget from different file
import './quiz.dart';
import './result.dart';

/*
void main() {
  runApp(MyApp());
}
*/
void main() => runApp(MyApp());

var questionIndex = 0;
var totalScore = 0;

var questions = [
  {
    'questionText': 'what\'s ur favourite color ?',
    'answers': [
      {'text': 'Black', 'score': 20},
      {'text': 'Red', 'score': 15},
      {'text': 'Green', 'score': 10},
      {'text': 'Orange', 'score': 5},
    ],
  },
  {
    'questionText': 'Where do you live ?',
    'answers': [
      {'text': 'Bamako', 'score': 20},
      {'text': 'Monrovia', 'score': 15},
      {'text': 'Zwedru', 'score': 10},
      {'text': 'Conakry', 'score': 5},
    ],
  },
  {
    'questionText': 'What is ur mom name  ?',
    'answers': [
      {'text': 'Lucy', 'score': 20},
      {'text': 'Lu', 'score': 10},
      {'text': 'Sofia', 'score': 15},
      {'text': 'Mariama', 'score': 5},
    ],
  },
  {
    'questionText': 'What is ur school name ?',
    'answers': [
      {'text': 'ISTA', 'score': 20},
      {'text': 'TechnoLAB-ISTA', 'score': 10},
      {'text': 'UL', 'score': 5},
      {'text': 'STARZIT', 'score': 15},
    ],
  },
];

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void answerQuestionMethod(int score) {
    //calculating total score
    totalScore += score;

    setState(() {
      questionIndex = questionIndex + 1;
    });
    if (questionIndex < questions.length) {
      print('We have more questions $totalScore');
    } else {
      print('You got it ! $totalScore');
    }
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('First App'),
      ),
      //if condition check
      body: questionIndex < questions.length
          //The ? mark is used for if statement it is a short cut.
          ? Quiz(
              answerQuestion: answerQuestionMethod,
              questionIndex: questionIndex,
              questions: questions,
            )
          //The (:) is used to for the else statement.
          : Result(totalScore, resetQuiz),
    ));
  }
}
