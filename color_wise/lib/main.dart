import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// flutter pkg exposes the material.dart file to us which contains a lot of Material Theming
// 'runApp' prompts flutter to calls the 'build' mtd to draw stuffs to the screen
void main() => runApp(MyApp());

// A Widget is a special type of object and we need a class to create an obj
// MyApp widget will inherit from the StatelessWidget base class which comes from flutter/material.dart dependency
// MyApp will then add its own extra features which is its own intrinsic pties & mtds
// Dart will then know that MyApp class will be based on the StatelessWidget base class
// You can only extends one class at a time
// ======================Stateful Widget============================
// A 'Stateful Widget' is a combination of two classes
// The MyApp widget rebuilds once the external data/state changes in 'MyAppState'
class MyApp extends StatefulWidget {
  // This widget is the root of your application- All other Widgets will be nested inside it.
  @override
  State<StatefulWidget> createState() {
    // The state is returned here
    return _MyAppState();
  }
}

// USING UNDERSCORE(_) - This means MyAppState class & all its pties and mtds can't be used elsewhere
// if the file is imported except in main.dart file and MyAppState itself where it is declared
// _ shows _MyAppState is now a private class
// the leading underscore means _MyAppState should only be reusable under the main.dart file,where it is defined
// It also means you cant alter anything elsewhere if the file is imported except in the file where MyAppState belongs
// ============THE STATE OF OUR APP=============
// State is generic and and the data in the State is persistence,
// we need to put a pointer that State belongs to 'MyApp' class hence <MyApp>
class _MyAppState extends State<MyApp> {
  // putting 'const' before the value means you cannot modify/add to this list,its constant.
  final _questions = const [
    {
      'questionText': 'Whats\'s your favorite color?',
      'answers': [
        {'text': 'Green', 'score': 2},
        {'text': 'Green', 'score': 2},
        {'text': 'Green', 'score': 2},
        {'text': 'Green', 'score': 2},
      ],
    },
    {
      'questionText': 'Whats\'s your favorite food?',
      'answers': [
        {'text': 'Green', 'score': 2},
        {'text': 'Green', 'score': 2},
        {'text': 'Green', 'score': 2},
        {'text': 'Green', 'score': 2},
      ],
    },
    {
      'questionText': 'Whats\'s your favorite animal?',
      'answers': [
        {'text': 'Green', 'score': 2},
        {'text': 'Green', 'score': 2},
        {'text': 'Green', 'score': 2},
        {'text': 'Green', 'score': 2},
      ],
    }
  ];
  // questionNumber & answerQuestion are the pties and mtds of this class(_MyAppState)
  // hence we also make them private

  var _questionNumber = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionNumber = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    // setState calls the build method each time the _questionNumber changes, and update the particular widget affected
    setState(() {
      _questionNumber++;
    });
    if (_questionNumber < _questions.length) {
      print('Continue');
    } else {
      print('No More questions!');
    }

    print(_questionNumber);
  }

// The build mtd belons to the state of our app
  @override //overrides the build mtd that comes frm StatelessWidget so that we can write our own below
  // build mtd will be called by flutter to return a widget, hence Widget at the front of the build mtd
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Color Wise'),
      ),
      // Column is to lay things out vertically
      body: _questionNumber < _questions.length
          ? Quiz(
              questionNumber: _questionNumber,
              answerQuestion: _answerQuestion,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
