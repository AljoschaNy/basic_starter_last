import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 6) {
      resultText = "You are so bad!";
    } else if (resultScore <= 10) {
      resultText = "You are ... strange?!";
    } else if (resultScore <= 20) {
      resultText = "Pretty likeable!";
    } else {
      resultText = "You are awesome and innocent";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
