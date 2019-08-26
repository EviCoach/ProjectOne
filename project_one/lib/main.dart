import 'package:flutter/material.dart';

import 'Quiz.dart';
import 'Result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      // if (_questionIndex == questions.length - 1) {
      //   _questionIndex = 0;
      // } else {
      _questionIndex += 1;
      // }
    });
  }

  final _questions = const [
    {
      'questionText': 'What\s your favourite colour?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 1}
      ],
    },
    {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': [
        {'text': 'Computer', 'score': 3},
        {'text': 'Max', 'score': 8},
        {'text': 'Bob Ziroll', 'score': 1},
        {'text': 'Michael Faraday', 'score': 2},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore)),
    );
  }
}
