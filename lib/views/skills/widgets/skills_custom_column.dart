import 'package:flutter/material.dart';

class CustomSplitColumn extends StatelessWidget {
  const CustomSplitColumn({
    super.key,
    required this.children,
    required this.categoryName,
    required this.icon,
  });
  final List<Widget> children;
  final String categoryName;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text.rich(
            TextSpan(
              children: [
                WidgetSpan(child: icon),
                const WidgetSpan(child: SizedBox(width: 10)),
                TextSpan(
                  text: categoryName.toUpperCase(),
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        )
      ],
    );
  }
}
