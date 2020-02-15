import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class PhysicsSimulation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Physics Simulation')),
      body: Container(
          child: Center(
        child: DraggableCard(
          child: FlutterLogo(
            size: 128,
          ),
        ),
      )),
    );
  }
}

class DraggableCard extends StatefulWidget {
  final Widget child;
  DraggableCard({this.child});

  @override
  _DraggableCardState createState() => _DraggableCardState();
}

class _DraggableCardState extends State<DraggableCard>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Alignment _dragAlignment = Alignment.center;
  Animation<Alignment> _animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _controller.addListener(() {
      _dragAlignment = _animation.value;
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _runAnimation(Offset pixelPerSecond, Size size) {
    _animation = _controller
        .drive(AlignmentTween(begin: _dragAlignment, end: Alignment.center));

    final unitsPerSecondX = pixelPerSecond.dx / size.width;
    final unitsPerSecondY = pixelPerSecond.dy / size.height;
    final unitsPerSecond = Offset(unitsPerSecondX, unitsPerSecondY);
    final unitVelocity = unitsPerSecond.distance;

    const spring = SpringDescription(mass: 30, stiffness: 1, damping: 1);

    final simulation = SpringSimulation(spring, 0, 1, -unitVelocity);

    _controller.animateWith(simulation);

    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
        onPanDown: (details) {
          _controller.stop();
        },
        onPanUpdate: (details) {
          setState(() {
            _dragAlignment += Alignment(details.delta.dx / (size.width / 2),
                details.delta.dy / (size.height / 2));
          });
        },
        onPanEnd: (details) {
          _runAnimation();
        },
        child: Align(
          alignment: _dragAlignment,
          child: Card(
            child: widget.child,
          ),
        ));
  }
}
