import 'package:flutter/cupertino.dart';
import 'package:web_portfolio/utils/helper.dart';

class SkillsMobileView extends StatelessWidget {
  const SkillsMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: getGraidentBackround(context),
    );
  }
}
