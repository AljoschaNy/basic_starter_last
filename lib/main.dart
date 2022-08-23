import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// alternative syntax
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's yout favorite animal",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text("Button1"),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text("Button2"),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text("Button3"),
            ),
          ],
        ),
      ),
    );
  }
}
