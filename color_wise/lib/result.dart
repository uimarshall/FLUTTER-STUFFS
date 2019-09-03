import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final scoreResult;
  final resetHandler;
  Result(this.scoreResult, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            'You Have Attempted All Questions! and score $scoreResult',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          // Text(
          //   '/n',
          // ),
          // Text(
          //   'Your score $scoreResult',
          //   style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          // ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
              style: TextStyle(fontSize: 38),
            ),
            onPressed: resetHandler,
            textColor: Colors.green,
          )
        ],
      ),
    );
  }
}
