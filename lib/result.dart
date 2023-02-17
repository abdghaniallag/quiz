import 'package:flutter/material.dart';
import 'package:quiz/data.dart';

class Result extends StatelessWidget {
  final Function() holder;
  const Result(this.holder, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( borderRadius:BorderRadius.circular(25) ,
        color: currentThemeIsLight ? Colors.black45 : Colors.black12,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Done!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: currentThemeIsLight == false ? Colors.black : Colors.white,
            ),
          ),
          Text(
            'Total Score =  $currentScore\\280',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: currentThemeIsLight == false ? Colors.black : Colors.white,
            ),
          ),
          Text(
            resultCommente.toString(),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: currentThemeIsLight == false ? Colors.black : Colors.white,
            ),
          ),
          TextButton(
            onPressed: holder,
            child: const Text(
              'Restart The App',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
