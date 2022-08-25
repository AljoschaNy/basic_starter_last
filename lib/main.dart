import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

// alternative syntax
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
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Black", "score": 1},
        {"text": "White", "score": 10},
        {"text": "Green", "score": 5},
        {"text": "Yellow", "score": 7},
      ],
    },
    {
      "questionText": "What's yout favorite animal",
      "answers": [
        {"text": "Elephant", "score": 5},
        {"text": "Snake", "score": 1},
        {"text": "Lion", "score": 7},
        {"text": "Dog", "score": 10},
      ],
    },
    {
      "questionText": "What's yout favorite country",
      "answers": [
        {"text": "Germany", "score": 4},
        {"text": "England", "score": 5},
        {"text": "France", "score": 7},
        {"text": "Italy", "score": 9},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;      
    });


  }

  void _answerQuestion(int answerScore) {
    _totalScore += answerScore;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
