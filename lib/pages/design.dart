import 'package:flutter/material.dart';

import 'design/drawer_screen.dart';
import 'design/export_fonts.dart';
import 'design/snackbar_screen.dart';
import 'design/update_ui.dart';
import 'design/working_tabs.dart';

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
            trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DrawerScreen()));
                }),
            title: Text('Add a Drawer to a screen'),
          ),
          ListTile(
            trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SnackbarScreen()));
                }),
            title: Text('Display a snackbar'),
          ),
          ListTile(
            trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ExportFonts()));
                }),
            title: Text('Export fonts from a package'),
          ),
          ListTile(
            trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UpdateUi()));
                }),
            title: Text('Update the UI based on orientation'),
          ),
          ListTile(
            trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WorkingTabs()));
                }),
            title: Text('Work with tabs'),
          )
        ],
      ),
    );
  }
}
