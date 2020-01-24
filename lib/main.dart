import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(Gawe());
}

class Gawe extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GaweState();
  }
}

class _GaweState extends State<Gawe> {
  var _questionsIndex = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 15},
        {'text': 'Green', 'score': 20},
        {'text': 'White', 'score': 25}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Lion', 'score': 5}
      ],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Mamba', 'score': 15},
        {'text': 'Big', 'score': 22}
      ],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gawe"),
        ),
        body: _questionsIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionsIndex: _questionsIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
