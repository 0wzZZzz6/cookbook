import 'package:flutter/material.dart';

class FadeWidget extends StatefulWidget {
  final String title;

  FadeWidget({Key key, this.title}) : super(key: key);

  @override
  _FadeWidgetState createState() => _FadeWidgetState();
}

class _FadeWidgetState extends State<FadeWidget> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fade Widget')),
      body: Center(
        child: AnimatedOpacity(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
          duration: Duration(milliseconds: 500),
          opacity: _visible ? 1.0 : 0.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        child: Icon(Icons.flip),
        tooltip: 'Toggle Opacity',
      ),
    );
  }
}
