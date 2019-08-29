import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // The data received in the constructor is stored in the questionText variable
  // final means the data should not change
  final String questionText;
  // Initialize constructor
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
