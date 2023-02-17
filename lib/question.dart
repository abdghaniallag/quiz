
import 'package:flutter/material.dart';
import 'package:quiz/data.dart';

class Question extends StatelessWidget {
  Question(
    this.question, {
    Key? key,
  }) : super(key: key);

  String question;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        question,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: !currentThemeIsLight  ? Colors.black : Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
