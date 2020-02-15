import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'Navigation',
            style: TextStyle(fontSize: 20),
          ),
          ListTile(
            title: Text('Fetch data from the internet'),
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
          ),
          ListTile(
            title: Text('Make authenticated requests'),
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
          ),
          ListTile(
            title: Text('Parse JSON in the background'),
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
          ),
          ListTile(
            title: Text('Work with WebSockets'),
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
          ),
        ],
      ),
    );
  }
}
