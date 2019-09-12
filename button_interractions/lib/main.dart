import 'package:flutter/material.dart';
import './button_output.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Flutter only gives us Material widget for now as root
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        // primarySwatch is the bgcolor that usually appear at the appbar
        primarySwatch: Colors.red,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            OutputText(),
            FlatButton(
              // Sets the text-color to white
              textColor: Colors.white,
              // Sets the bg-color to red
              color: Colors.red,
              // Sets the bg-color to green when the button is clicked!
              // highlightColor: Colors.green,
              // Sets how/what color should splash when clicked
              splashColor: Colors.lightBlue,
              // null set the button to disable
              onPressed: () {},
              child: Text(
                'I am FlaT',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            RaisedButton(
              // Only raised button has elevation
              elevation: 16.0,
              color: Colors.cyanAccent,

              onPressed: () {},
              child: Text(
                'I am Raised',
                style: TextStyle(fontSize: 24.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
