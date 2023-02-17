import 'package:flutter/material.dart';
import 'package:quiz/data.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

void main(List<String> args) {
  runApp(Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
          appBar: AppBar(title: Text(
            'Quiz App',
            style: TextStyle(
                color: currentThemeIsLight == false ? Colors.white : Colors.black),
          ),
          actions: [
            Switch(
              value: currentThemeIsLight,
              onChanged: (value) {
                setState(() {
                  currentThemeIsLight = value;
                });
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.blueGrey,
              inactiveTrackColor: Colors.blueGrey,
            ),
          ],
        ),
          body: Container(color:const Color.fromARGB(255, 217, 200, 248),
              width: double.infinity,
              height: double.infinity,
              padding:const EdgeInsets.all(8),
              child: questions.length > currentQuestion
                  ? Quiz(questions, currentQuestion, answerQuestion)
                  :   Result(reset))),
    );
  }

  answerQuestion(int s) {
    setState(() {
      currentScore += s;
      currentQuestion += 1;
    });
  }

  reset() {
    setState(() {
      currentScore  = 0;
      currentQuestion  = 0;
    });
  }
}
