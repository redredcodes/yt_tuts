import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  const MyCircle({super.key, required this.child});

  final String child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            color: Colors.pink[200],
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              child,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[600]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
