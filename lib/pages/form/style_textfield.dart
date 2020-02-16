import 'package:flutter/material.dart';

class StyleTextfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Style Textfield')),
      body: App(),
    );
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
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Enter Search',
                border: InputBorder.none,
                hintText: 'Enter a search term'),
          )
        ],
      ),
    );
  }
}
