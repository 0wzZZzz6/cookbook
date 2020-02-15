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
    ));
  }
}
