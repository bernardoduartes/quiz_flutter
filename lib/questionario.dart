import 'package:flutter/material.dart';
import './question.dart';
import './response.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) onPressed;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.onPressed,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null;

    return Column(
      children: <Widget>[
        Question(perguntas[perguntaSelecionada]['texto']),
        ...respostas.map((resp) {
          return Response(
            resp['texto'],
            () => onPressed(resp['pontuacao']),
          );
        }).toList(),
      ],
    );
  }
}
