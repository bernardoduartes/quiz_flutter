import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() {
  runApp(new QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Quiz'),
    );
  }
}
