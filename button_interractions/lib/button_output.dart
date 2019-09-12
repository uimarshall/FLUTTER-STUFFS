import 'package:flutter/material.dart';

class OutputText extends StatefulWidget {
  @override
  _OutputTextState createState() => _OutputTextState();
}

class _OutputTextState extends State<OutputText> {
  int counter = 0;
  String displayStr = "";
  List<String> words = [
    'RaisedButton',
    'has',
    'an',
    'elevation',
    'whereas',
    'FlatButton',
    'do',
    'not',
    'have',
    'Full stop!'
  ];

  void handlePressed() {
    setState(() {
      displayStr = words[counter];
      counter = counter < 9 ? counter = counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          displayStr,
          style: TextStyle(fontSize: 26.0, color: Colors.cyan),
        ),
        Container(
            child: Center(
          child: RaisedButton(
            color: Colors.black,
            child: Text(
              'Press Me',
              style: TextStyle(fontSize: 28.0, color: Colors.white),
            ),
            onPressed: handlePressed,
          ),
        )),
      ],
    );
  }
}
