import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_flutter/question.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _perguntaSelecionada = 0;
  final perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
  ];

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });

    print(_perguntaSelecionada);
  }

  void Function() resposta3Function() {
    return () {
      print('Pergunta 3 respondida!');
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizApp'),
        ),
        body: Column(
          children: [
            Question(perguntas[_perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: () {
                print('Pergunta 2 respondida!');
              },
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: resposta3Function(),
            ),
            RaisedButton(
              child: Text('Resposta 4'),
              onPressed: () => print('Pergunta 4 respondida!'),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
