import 'package:flutter/cupertino.dart';
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
      decoration: getGraidentBackround(context),
      child: Column(
        children: [],
      ),
    );
  }
}
