import 'package:first_app/MainContainer.dart';
import 'package:flutter/material.dart';

import 'Response.dart';

void main() => runApp(FirstAPP());

class FirstAPP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstAppState();
  }
}

class FirstAppState extends State<FirstAPP> {
  final texts = const [
    {
      "question": "What type of person am I?",
      "answers": [
        {
          "text": "Arrogant",
          "score": 2,
        },
        {
          "text": "Selfish",
          "score": 3,
        },
        {
          "text": "Charming",
          "score": 10,
        },
      ]
    },
    {
      "question": "Do you like me?",
      "answers": [
        {
          "text": "Yes",
          "score": 10,
        },
        {
          "text": "No",
          "score": 1,
        },
        {
          "text": "Yes & No",
          "score": 5,
        }
      ]
    }
  ];

  var _textIndex = 0;
  var _score = 0;

  void _changeStep(int score) {
    setState(() {
      if (_textIndex < 2) {
        _textIndex++;
        _score += score;
      }
    });
  }

  void _restart(){
    setState(() {
      _textIndex=0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Like me or Not"),
          backgroundColor: Colors.red,
        ),
        body: _textIndex < texts.length
            ? MainContainer(
                functionHandler: _changeStep,
                index: _textIndex,
                texts: texts,
              )
            : Response(score: _score, handler: _restart,),
      ),
    );
  }
}
