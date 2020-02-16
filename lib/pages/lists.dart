import 'package:flutter/material.dart';

import 'list/grid_list.dart';

class Lists extends StatefulWidget {
  @override
  _ListsState createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'List',
            style: TextStyle(fontSize: 20),
          ),
          ListTile(
            title: Text('Create a grid list'),
            trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => GridList()));
                }),
          ),
          ListTile(
            title: Text('Create a horizontal list'),
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
          ),
          ListTile(
            title: Text('Create lists with different types of items'),
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
          ),
          ListTile(
            title: Text('Place a floating app bar above a list'),
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
          ),
          ListTile(
            title: Text('Use lists'),
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
          ),
          ListTile(
            title: Text('Work with long lists'),
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
          ),
        ],
      ),
    );
  }
}
