import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';

import 'data.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(int s) answerQuestion;

  Quiz(this.questions, this.questionIndex, this.answerQuestion, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: currentThemeIsLight ? Colors.black45 : Colors.black12,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Question(questions[questionIndex]['questionText'].toString()),Center(child: Column(children: [
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
                () => answerQuestion(int.parse(answer['score'].toString())),
                answer['text'].toString());
          }).toList(),],),)
        ],
      ),
    );
  }
}
