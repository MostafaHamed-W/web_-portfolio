import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BackToTopButton extends StatelessWidget {
  const BackToTopButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final scrollController = context.watch<ScrollController>();
    return scrollController.isZeroOffset
        ? const SizedBox()
        : FloatingActionButton(
            mini: true,
            onPressed: () {
              scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 700),
                curve: Curves.easeInOut,
              );
            },
            child: const Icon(Icons.arrow_upward),
          );
  }
}

extension on ScrollController {
  bool get isZeroOffset {
    return offset == 0;
  }
}
