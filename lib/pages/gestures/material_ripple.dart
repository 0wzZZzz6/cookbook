import 'package:flutter/material.dart';

class MaterialRipple extends StatefulWidget {
  @override
  _MaterialRippleState createState() => _MaterialRippleState();
}

class _MaterialRippleState extends State<MaterialRipple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Ripple'),
      ),
      body: Center(
        child: // The InkWell wraps the custom flat button widget.
            InkWell(
          // When the user taps the button, show a snackbar.
          onTap: () {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('Tap'),
            ));
          },
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: Text('Flat Button'),
          ),
        ),
      ),
    );
  }
}
