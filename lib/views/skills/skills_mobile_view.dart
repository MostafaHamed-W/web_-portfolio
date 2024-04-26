import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/components/mobile_view_builder.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/views/skills/widgets/skills_custom_column.dart';

class SkillsMobileView extends StatelessWidget {
  const SkillsMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return MobileViewBuilder(
      mainText: 'Why Choose Me',
      subText: 'My Expertise Area',
      isGraidentBackground: true,
      hasPadding: true,
      children: [
        SkillsCustomColumn(
          categoryName: 'Personal Skills',
          icon: const Icon(Icons.co_present),
          children: [
            for (var skill in kSoftSkills)
              Text(
                skill,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
          ],
        ),
        SkillsCustomColumn(
          categoryName: 'Technical Skills',
          icon: const Icon(Icons.computer),
          children: [
            for (var skill in kTechnicalSkills)
              AutoSizeText(
                maxLines: 1,
                minFontSize: 9, // set your desired minimum font size
                maxFontSize: 24, // set your desired maximum font size
                skill,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
          ],
        ),

        // Old skills mobile view
        // for (var index = 0; index < kSkillsNames.length; index++) ...[
        //   OutelinedSkillsContainer(index: index, rowIndex: 0, isMobile: true),
        //   const SizedBox(height: 20),
        // ]
      ],
    );
  }
}
