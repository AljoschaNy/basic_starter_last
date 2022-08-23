import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "What's your favorite color?",
        "answers": ["Black", "White", "Green", "Yellow"],
      },
      {
        "questionText": "What's yout favorite animal",
        "answers": ["Elephant", "Snake", "Lion", "Dog"],
      },
      {
        "questionText": "What's yout favorite country",
        "answers": ["Germany", "England", "France", "Italy"],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]["questionText"],
            ),
            ...(questions[_questionIndex]["answers"] as List).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
