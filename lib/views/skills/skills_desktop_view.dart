import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/helper.dart';

import '../../utils/sizes.dart';

class SkillsDesktopView extends StatelessWidget {
  const SkillsDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kScreenPadding,
      width: Sizes.defaultWidth,
      height: 670,
      decoration: getGraidentBackround(context),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text(
            'Why Choose Me',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: AppColors.kPrimaryColor, fontSize: 18),
          ),
          Text(
            'My Expertise Area',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
