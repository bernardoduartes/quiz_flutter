import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  final String text;

  Response(this.text);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(text),
      onPressed: null,
    );
  }
}
