import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  final String text;
  final void Function() _onPressed;

  Response(this.text, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue[600],
        child: Text(text),
        onPressed: _onPressed,
      ),
    );
  }
}
