import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  // Initialize constructor
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        // Whatever is received as props from the parent Class(main.dart) is stored in 'selectHandler'
        // onPressed points to the 'answerQuestion()' fn wtout parenthesis
        onPressed: selectHandler,
      ),
    );
  }
}
