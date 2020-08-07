import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function stepHandler;
  final int score;
  Answer({
    this.stepHandler,
    this.text,
    this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        onPressed: stepHandler,
        color: Colors.red,
      ),
    );
  }
}
