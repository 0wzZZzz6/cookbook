import 'package:flutter/material.dart';
import 'package:cookbook/pages/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'Flutter Cookbook',
        home: Home(),
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColorDark: Colors.blue[900],
          primaryColor: Colors.blue,
          primaryColorLight: Colors.blue[500],
          // fontFamily: 'Cinzel',
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ),
      ),
    );
  }
}
