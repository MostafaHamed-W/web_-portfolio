import 'package:flutter/material.dart';
import 'package:web_portfolio/components/desktop_view_builder.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/views/skills/widgets/outelined_skills_container.dart';

class SkillsDesktopView extends StatelessWidget {
  const SkillsDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return DesktopViewBuilder(
      isGraidentBackground: true,
      mainText: 'Why Choose Me',
      subText: 'My Expertise Area',
      children: [
        const SizedBox(height: 30),
        Column(
          children: [
            for (var rowIndex = 0; rowIndex < kSkillsNames.length / 4; rowIndex++)
              Row(
                children: [
                  for (var index = 0; index < kSkillsNames.length / 2; index++)
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 0 : 9, bottom: 20),
                        child: OutelinedSkillsContainer(index: index, rowIndex: rowIndex),
                      ),
                    )
                ],
              ),
            const SizedBox(height: 20),
          ],
        )
      ],
    );
  }
}
