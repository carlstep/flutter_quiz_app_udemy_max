import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'You\'re pretty cool!';
    } else if (resultScore <= 16) {
      resultText = 'You are strange!';
    } else {
      resultText = 'You\'re weird!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 28.0),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: OutlinedButton(
                child: Text('Reset'),
                style: OutlinedButton.styleFrom(

                  backgroundColor: Colors.grey.shade200,
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  side: BorderSide(color: Colors.grey),
                  textStyle: TextStyle(
                    fontSize: 26.0,
                    color: Colors.lightBlue,
                  ),
                ),
                onPressed: resetHandler,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
