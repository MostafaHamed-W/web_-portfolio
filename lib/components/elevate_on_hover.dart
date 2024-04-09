import 'package:flutter/material.dart';

class ElevateOnHover extends StatefulWidget {
  final Widget child;
  const ElevateOnHover({super.key, required this.child});

  @override
  State<ElevateOnHover> createState() => _ElevateOnHoverState();
}

class _ElevateOnHoverState extends State<ElevateOnHover> {
  final nonHoverTransform = Matrix4.identity()..translate(0, 0, 0);
  final hoverTransform = Matrix4.identity()..translate(0, -10, 0);
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => mouseEnter(true),
      onExit: (event) => mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: hovering ? hoverTransform : nonHoverTransform,
        child: widget.child,
      ),
    );
  }

  void mouseEnter(bool hover) {
    setState(() {
      hovering = hover;
    });
  }
}
