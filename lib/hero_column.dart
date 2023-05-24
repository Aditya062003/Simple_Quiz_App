import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class HeroColumn extends StatelessWidget {
  const HeroColumn(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 275,
            color: const Color.fromARGB(175, 255, 255, 255),
          ),
          Container(
            padding: const EdgeInsets.only(top: 80, bottom: 30),
            child: const StyledText('Learn Flutter the fun way!'),
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
