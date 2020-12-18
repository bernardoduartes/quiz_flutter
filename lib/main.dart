import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizApp'),
        ),
        body: Text('Question'),
      ),
    );
  }
}
