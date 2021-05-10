import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
      // width: double.infinity,
      padding: EdgeInsets.fromLTRB(50, 20, 50, 30),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 26.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
