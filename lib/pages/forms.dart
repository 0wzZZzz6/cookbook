import 'package:flutter/material.dart';

import 'form/focus_textfield.dart';
import 'form/form_validation.dart';
import 'form/handle_change.dart';
import 'form/retrieve_value.dart';
import 'form/style_textfield.dart';

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('Forms', style: TextStyle(fontSize: 20)),
          ListTile(
            title: Text('Build a form with validation'),
            trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FormValidation()));
                }),
          ),
          ListTile(
            title: Text('Create and style a text field'),
            trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StyleTextfield()));
                }),
          ),
          ListTile(
            title: Text('Focus and text fields'),
            trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FocusTextfield()));
                }),
          ),
          ListTile(
            title: Text('Handle changes to a text field'),
            trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HandleChange()))),
          ),
          ListTile(
            title: Text('Retrieve the value of a text field'),
            trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => RetrieveValue()))),
          ),
        ],
      ),
    );
  }
}
