import 'package:flutter/material.dart';

import 'Answer.dart';
import 'Question.dart';
import 'Quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
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
      'answers': ['Black', 'Red', 'Green', 'White', 'Yellow'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': ['Computer', 'Robert Greene', 'Max', 'King'],
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
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
