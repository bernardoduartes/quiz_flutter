import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_flutter/question.dart';
import 'package:quiz_flutter/response.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
    }
  ];

  void _onPressed() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  void Function() resposta3Function() {
    return () {
      print('Pergunta 3 respondida!');
    };
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['respostas']
        : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizApp'),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  Question(_perguntas[_perguntaSelecionada]['texto']),
                  ...respostas.map((r) => Response(r, _onPressed)).toList(),
                ],
              )
            : null,
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
