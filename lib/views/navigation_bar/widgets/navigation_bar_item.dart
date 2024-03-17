import 'package:flutter/material.dart';

class NavigationItem {
  final String text;
  NavigationItem(this.text);
}

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.onTap,
    required this.text,
  });

  final void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: InkWell(
        mouseCursor: MaterialStateMouseCursor.clickable,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 20),
        ),
      ),
    );
  }
}
