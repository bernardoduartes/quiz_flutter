import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String texto;

  Result(this.texto);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(texto, style: TextStyle(fontSize: 28)));
  }
}
