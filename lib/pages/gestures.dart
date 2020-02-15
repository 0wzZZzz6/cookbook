import 'package:flutter/material.dart';

class Gestures extends StatefulWidget {
  @override
  _GesturesState createState() => _GesturesState();
}

class _GesturesState extends State<Gestures> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'Gestures',
            style: TextStyle(fontSize: 20),
          ),
          ListTile(
            title: Text('Add Material touch ripples'),
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
          ),
          ListTile(
            title: Text('Handle taps'),
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
          ),
          ListTile(
            title: Text('Implement swipe to dismiss'),
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
          ),
        ],
      ),
    );
  }
}
