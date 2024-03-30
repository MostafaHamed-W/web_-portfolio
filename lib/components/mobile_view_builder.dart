import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/helper.dart';

class MobileViewBuilder extends StatelessWidget {
  const MobileViewBuilder({
    super.key,
    this.hasPadding = false,
    required this.mainText,
    required this.subText,
    required this.children,
    this.afterTitlePadding = 30,
    required this.isGraidentBackground,
  });
  final bool hasPadding;

  final String mainText;
  final String subText;
  final List<Widget> children;
  final bool isGraidentBackground;
  final double afterTitlePadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: hasPadding ? kScreenPadding : null,
      decoration: isGraidentBackground ? getGraidentBackround(context) : null,
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text(
            mainText,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: AppColors.kPrimaryColor, fontSize: 18),
          ),
          AutoSizeText(
            subText,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
            maxLines: 1,
          ),
          SizedBox(height: afterTitlePadding),
          ...children,
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
