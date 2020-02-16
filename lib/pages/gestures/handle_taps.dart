import 'package:flutter/material.dart';

class HandleTaps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Handle Taps')),
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
      child: GestureDetector(
        // When the child is tapped, show a snackbar.
        onTap: () {
          final snackBar = SnackBar(content: Text("Tap"));

          Scaffold.of(context).showSnackBar(snackBar);
        },
        // The custom button
        child: Center(
          child: Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Theme.of(context).buttonColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text('My Button'),
          ),
        ),
      ),
    );
  }
}
