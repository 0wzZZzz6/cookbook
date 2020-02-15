import 'package:cookbook/pages/animations/route_transition.dart';
import 'package:flutter/material.dart';
import 'animations/physics_simulation.dart';

class Animations extends StatefulWidget {
  @override
  _AnimationsState createState() => _AnimationsState();
}

class _AnimationsState extends State<Animations> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'Animations',
            style: TextStyle(fontSize: 20),
          ),
          ListTile(
              trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RouteTransition()));
                },
              ),
              title: Text('Animate a page route transition')),
          ListTile(
              trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PhysicsSimulation()));
                },
              ),
              title: Text('Animate a widget using a physics simulation')),
          ListTile(
              trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {},
              ),
              title: Text('Animate the properties of a container')),
          ListTile(
              trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {},
              ),
              title: Text('Fade a widget in and out'))
        ],
      ),
    );
  }
}
