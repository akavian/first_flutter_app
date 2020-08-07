import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  final Function handler;
  final int score;
  Response({this.score, this.handler});

  String get result {
    var resultText;
    if (score < 13) {
      resultText = "Naaaah, I'm Not That Bad";
    } else {
      resultText = "Thanks, I Love You Too";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child: Column(children: <Widget>[
        Text(
          result,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 25,
            
          ),
        ),
        FlatButton(
          child: Text("Start Again", style: TextStyle(color: Colors.red , fontSize: 18),),
          onPressed: handler,
        )
      ]),
    );
  }
}
