import 'package:flutter/cupertino.dart';
import 'package:web_portfolio/utils/sizes.dart';

class ProjectDesktopView extends StatelessWidget {
  const ProjectDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 950;
    return Container(
      height: Sizes.defaultHeight,
      width: Sizes.defaultWidth,
      child: const Row(
        children: [],
      ),
    );
  }
}
