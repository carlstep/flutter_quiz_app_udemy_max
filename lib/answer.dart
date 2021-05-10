import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      padding: EdgeInsets.all(16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green.shade500,
          textStyle: TextStyle(fontSize: 20.0),
          minimumSize: Size(150.0, 50.0),
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
