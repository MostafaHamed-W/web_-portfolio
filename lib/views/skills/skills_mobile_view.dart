import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/colors.dart';
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
          const SizedBox(height: 30),
          for (var index = 0; index < kSkillsNames.length; index++) ...[
            OutelinedSkillsContainer(index: index, rowIndex: 0, isMobile: true),
            const SizedBox(height: 20),
          ],
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
