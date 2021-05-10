import 'package:flutter/material.dart';
import 'package:flutter_app_basic_counter/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'Green', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Pig', 'score': 10},
        {'text': 'Dog', 'score': 3},
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Rhino', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favorite season?',
      'answers': [
        {'text': 'Winter', 'score': 4},
        {'text': 'Spring', 'score': 3},
        {'text': 'Summer', 'score': 5},
        {'text': 'Autumn', 'score': 6},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
      print(_totalScore);
    }
  } // answerQuestion() is a function for onPressed

  @override // Makes sure that the code is clean and indicates that the code is designed to override other functions.
  Widget build(BuildContext context) {
    // questions = [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
