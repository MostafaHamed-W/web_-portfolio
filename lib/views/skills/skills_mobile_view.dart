import 'package:flutter/cupertino.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/helper.dart';
import 'package:web_portfolio/views/skills/widgets/outelined_skills_container.dart';

class SkillsMobileView extends StatelessWidget {
  const SkillsMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kScreenPadding,
      // width: double.infinity,
      decoration: getGraidentBackround(context),
      child: Column(
        children: [
          for (var index = 0; index < kSkillsNames.length; index++) ...[
            OutelinedSkillsContainer(index: index, rowIndex: 0, isMobile: true),
            const SizedBox(height: 20),
          ]
        ],
      ),
    );
  }
}
