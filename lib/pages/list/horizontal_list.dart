import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Horizontal List')), body: App());
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160,
            color: Colors.blue[100],
          ),
          Container(
            width: 160,
            color: Colors.blue[500],
          ),
          Container(
            width: 160,
            color: Colors.blue[600],
          ),
          Container(
            width: 160,
            color: Colors.blue[700],
          ),
          Container(
            width: 160,
            color: Colors.blue[800],
          ),
          Container(
            width: 160,
            color: Colors.blue[900],
          ),
        ],
      ),
    );
  }
}
