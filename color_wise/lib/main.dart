import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// flutter pkg exposes the material.dart file to us which contains a lot of Material Theming
// 'runApp' prompts flutter to calls the 'build' mtd to draw stuffs to the screen
void main() => runApp(MyApp());

// A Widget is a special type of object and we need a class to create an obj
// MyApp widget will inherit from the StatelessWidget base class which comes from flutter/material.dart dependency
// MyApp will then add its own extra features which is its own intrinsic pties & mtds
// Dart will then know that MyApp class will be based on the StatelessWidget base class
// You can only extends one class at a time
class MyApp extends StatefulWidget {
  // This widget is the root of your application- All other Widgets will be nested inside it.
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// USING UNDERSCORE(_) - This means MyAppState class & all its pties and mtds can't be used elsewhere except in main.dart file and MyAppState itself
// _ shows _MyAppState is now a private class
// the leading underscore means _MyAppState should only be reusable under the main.dart file,where it is defined
// It also means you cant alter anything elsewhere if the file is imported except in the file where MyAppState belongs

// State is generic and and the data in the State is persistence,
// we need to put a pointer that State belongs to 'MyApp' class hence <MyApp>
class _MyAppState extends State<MyApp> {
  var _questionNumber = 0;
  void _answerQuestion() {
    // setState calls the build method each time the _questionNumber changes, and update the particular widget affected
    setState(() {
      _questionNumber++;
    });

    print(_questionNumber);
  }

  @override //overrides the build mtd that comes frm StatelessWidget so that we can write our own below
  // build mtd will be called by flutter to return a widget, hence Widget at the front of the build mtd
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'Whats\'s your favorite color?',
        'answers': ['Green', 'Blue', 'White', 'Red'],
      },
      {
        'questionText': 'Whats\'s your favorite food?',
        'answers': ['Pizza', 'Rice', 'Beams', 'Egg'],
      },
      {
        'questionText': 'Whats\'s your favorite animal?',
        'answers': ['Bear', 'Dog', 'Lion', 'Cat'],
      }
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Color Wise'),
      ),
      // Column is to lay things out vertically
      body: Column(
        children: [
          // =======================Question Widget================================
          Question(questions[_questionNumber]['questionText']),
          // =======================Answer Widget================================
          // Answer comp or class receives _answerQuestion as props from the root Class(MyApp)
          ...(questions[_questionNumber]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      ),
    ));
  }
}
