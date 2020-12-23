import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_flutter/question.dart';
import 'package:quiz_flutter/response.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _perguntaSelecionada = 0;

  void _onPressed() {
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
    final perguntas = [
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

    List<String> respostas = perguntas[_perguntaSelecionada]['respostas']);
    List<Widget> widgets = respostas
      .map((r) => Response(r, _onPressed))
      .toList();


   // for (String textoResp in respostas) {
   //   widgets.add(Response(textoResp, _responder));
   // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizApp'),
        ),
        body: Column(
          children: [
            Question(perguntas[_perguntaSelecionada]['texto']),
            ...widgets,
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
