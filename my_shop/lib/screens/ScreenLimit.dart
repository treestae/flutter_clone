import 'package:flutter/material.dart';

class ScreenLimit extends StatelessWidget {
  const ScreenLimit({Key? key, Widget? this.child, this.minWidth = 300, this.maxWidth = 600}) : super(key: key);
  final child;
  final double minWidth;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: minWidth, maxWidth: maxWidth), // no layout for Desktop
        child: child,
      ),
    );
  }
}
