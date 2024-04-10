import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/helper.dart';
import 'package:web_portfolio/utils/sizes.dart';

class DesktopViewBuilder extends StatelessWidget {
  const DesktopViewBuilder({
    super.key,
    this.height,
    required this.mainText,
    required this.subText,
    required this.children,
    this.isGraidentBackground = false,
  });
  final double? height;
  final String mainText;
  final String subText;
  final List<Widget> children;
  final bool isGraidentBackground;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: kScreenPadding,
      width: Sizes.defaultWidth,
      decoration: isGraidentBackground ? getGraidentBackround(context) : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Text(
            mainText,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: AppColors.kPrimaryColor, fontSize: 18),
          ),
          Text(
            subText,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          ...children,
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
