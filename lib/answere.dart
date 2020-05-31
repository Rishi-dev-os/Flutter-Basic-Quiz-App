import 'package:flutter/material.dart';

class Answere extends StatelessWidget {
  final Function functionHandler;
  final String answereKey;
  Answere(this.functionHandler, this.answereKey);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          answereKey,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        color: Colors.blue,
        onPressed: functionHandler,
      ),
    );
  }
}
