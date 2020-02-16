import 'package:flutter/material.dart';

class RetrieveValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return App();
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Retrieve Value')),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _controller,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(content: Text(_controller.text));
              },
            );
          },
          child: Icon(Icons.text_fields)),
    );
  }
}
