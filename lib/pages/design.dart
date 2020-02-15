import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'Design',
            style: TextStyle(fontSize: 20),
          ),
          ListTile(
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
            title: Text('Add a Drawer to a screen'),
          ),
          ListTile(
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
            title: Text('Display a snackbar'),
          ),
          ListTile(
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
            title: Text('Export fonts from a package'),
          ),
          ListTile(
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
            title: Text('Update the UI based on orientation'),
          ),
          ListTile(
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
            title: Text('Use a custom font'),
          ),
          ListTile(
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
            title: Text('Use themes to share colors and font styles'),
          ),
          ListTile(
            trailing:
                IconButton(icon: Icon(Icons.arrow_right), onPressed: null),
            title: Text('Work with tabs'),
          )
        ],
      ),
    );
  }
}
