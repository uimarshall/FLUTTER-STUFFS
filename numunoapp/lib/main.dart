import 'package:flutter/material.dart';

// If you use MaterialApp as the root widget, it means you want to use the google's
//  material design features inside this app, it will act as a wrapper for the rest of the widgets in this app
void main() => runApp(MaterialApp(
  // The 'home' pty tells us what will be displayed in the home screen when the app loads
  // The Scaffold widget help us to implement a basic layout for our app e.g Navbar, header, footer
    home: Home()));

// =======================Creating our custom Widget=============================================
// StatelessWidget means the data there or state cannot change over time
// Our 'Home' widget/class is inheriting from flutter's StatelessWidget
// All classes are widgets
// Our 'Home' Widget is reusable
// StatelessWidget will enable hot reload for us
class Home extends StatelessWidget {
  // @override means we want to use our own 'build' fn instaed of the one we inherited from StatelessWidget, it should override the one from StatelessWidget class
  @override
  // The build fn is responsible for building the Widget tree inside the Home StatelessWidget
  Widget build(BuildContext context) {
    // The 'build' fn returns the Scaffold layout which will be displayed in the Ui
    // The 'build' fn is similar to 'render' fn in React which returns the 'jsx' to be displayed
    return Scaffold(
      appBar: AppBar(
        title: Text('My first demo app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      // A Center widget centres anything that is nested inside it
      body: Center(
        child: Text(
          'Hello fellas',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
