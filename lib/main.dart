import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizApp'),
        ),
        body: Column(
          children: [
            Text(perguntas.elementAt(1)),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: () {
                print('Pergunta 1 respondida!');
              },
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: resposta2,
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

  void resposta2() {
    print('Pergunta 2 respondida!');
  }

  void Function() resposta3Function() {
    return () {
      print('Pergunta 3 respondida!');
    };
  }
}
