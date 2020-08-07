import 'package:first_app/Answer.dart';
import 'package:flutter/material.dart';

import 'Question.dart';

class MainContainer extends StatelessWidget {
  final Function functionHandler;
  final int index;
  final List<Map<String, Object>> texts;
  MainContainer(
      {@required this.functionHandler,
      @required this.index,
      @required this.texts});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Question(texts[index]["question"]),
          ...(texts[index]["answers"] as List<Map<String, Object>>)
              .map((answers) {
            return Answer(
              text: answers["text"],
              stepHandler: ()=> functionHandler(answers["score"]),
            );
          }).toList()
        ],
      ),
    );
  }
}
