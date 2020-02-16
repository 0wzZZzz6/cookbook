import 'package:flutter/material.dart';

class SwipeDismiss extends StatefulWidget {
  @override
  _SwipeDismissState createState() => _SwipeDismissState();
}

class _SwipeDismissState extends State<SwipeDismiss> {
  final items = List<String>.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Swipe Dismiss')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
              key: Key(item),
              background: Container(color: Colors.blue),
              onDismissed: (direction) {
                setState(() {
                  items.removeAt(index);
                });

                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$item dismissed'),
                  ),
                );
              },
              child: ListTile(title: Text('$item')));
        },
        itemCount: items.length,
      ),
    );
  }
}
