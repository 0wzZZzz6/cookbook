import 'package:flutter/material.dart';

class FormValidation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form validation')),
      body: App(),
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return "Pleace enter some text";
                }
                return null;
              },
            ),
            FlatButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('Processing Data'),
                    ));
                  }
                },
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
