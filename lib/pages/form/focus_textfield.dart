import 'package:flutter/material.dart';

class FocusTextfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Focus Textfield')), body: App());
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  FocusNode focusNode;

  @override
  void initState() {
    super.initState();

    focusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();

    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
          ),
          TextField(
            focusNode: focusNode,
          ),
          RaisedButton(
              child: Text('Focus node'),
              onPressed: () => FocusScope.of(context).requestFocus(focusNode))
        ],
      ),
    );
  }
}
