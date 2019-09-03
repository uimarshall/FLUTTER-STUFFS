import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // The data received in the constructor is stored in the questionText variable
  // final means the value of 'questionText' should not change within this 'Question Widget/class'
  // after its initialisatn in the constructor
  // final is a runtime constant value
  final String questionText;
  // Initialize constructor
  // Once data is received in the constructor, it will be stored as 'text' inside 'questionText'
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        // double.infinity makes the container to take the full width of the screen
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
