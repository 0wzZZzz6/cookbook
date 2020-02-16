import 'package:flutter/material.dart';

class HandleChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Handle Change')),
      body: App(),
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _controller = TextEditingController();

  @override
  void initState() {
    _controller.addListener(_printLatestValue);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: _controller,
      ),
    );
  }
}
