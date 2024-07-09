// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class startScreen extends StatelessWidget {
  const startScreen(this.starQuiz, {super.key});

  final void Function() starQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
              opacity: 0.6,
              child: Image.asset('assets/images/quiz-logo.png', width: 300)),
          SizedBox(height: 50),
          Text(
            'learn flutter',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: starQuiz,
            label: Text('Start Quiz'),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: Icon(Icons.arrow_right_alt_outlined),
          )
        ],
      ),
    );
  }
}
