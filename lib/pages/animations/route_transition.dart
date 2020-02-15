import 'package:flutter/material.dart';

class RouteTransition extends StatefulWidget {
  @override
  _RouteTransitionState createState() => _RouteTransitionState();
}

class _RouteTransitionState extends State<RouteTransition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Route Transition')),
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('route transition'),
            RaisedButton(
                onPressed: () {
                  Navigator.push(context, _createRoute());
                },
                child: Text('go to page2'))
          ],
        ),
      )),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        // var tween =
        //     Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        // var offsetAnimation = animation.drive(tween);

        var tween = Tween(begin: begin, end: end);
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
        return SlideTransition(
          // position: offsetAnimation,
          position: tween.animate(curvedAnimation),
          child: child,
        );
      });
}

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      body: Container(
          child: Center(
        child: Text('Page 2'),
      )),
    );
  }
}
