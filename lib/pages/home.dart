import 'package:cookbook/pages/animations.dart';
import 'package:cookbook/pages/design.dart';
import 'package:cookbook/pages/forms.dart';
import 'package:cookbook/pages/gestures.dart';
import 'package:cookbook/pages/lists.dart';
import 'package:cookbook/pages/navigation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cookbook'),
      ),
      body: Container(
          child: Center(
        child: ListView(
          children: <Widget>[
            Animations(),
            Design(),
            Forms(),
            Gestures(),
            Lists(),
            Navigation()
          ],
        ),
      )),
    );
  }
}
