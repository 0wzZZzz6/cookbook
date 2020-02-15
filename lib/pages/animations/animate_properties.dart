import 'dart:math';

import 'package:flutter/material.dart';

class AnimateProperties extends StatefulWidget {
  @override
  _AnimatePropertiesState createState() => _AnimatePropertiesState();
}

class _AnimatePropertiesState extends State<AnimateProperties> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animate Properties')),
      body: Container(
        child: Center(
          child: Center(
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: _width,
              height: _height,
              curve: Curves.fastOutSlowIn,
              decoration:
                  BoxDecoration(color: _color, borderRadius: _borderRadius),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            final random = Random();
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();

            _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                random.nextInt(256), 1);

            _borderRadius =
                BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
