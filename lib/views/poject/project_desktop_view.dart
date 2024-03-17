import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/utils/sizes.dart';

class ProjectDesktopView extends StatelessWidget {
  const ProjectDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 950;
    return Container(
      color: AppColors.kPromaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      height: Sizes.defaultHeight,
      width: Sizes.defaultWidth,
      child: Column(
        children: [
          Text(
            'Projects',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }
}
