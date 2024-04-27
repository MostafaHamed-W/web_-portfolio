import 'package:flutter/material.dart';
import 'package:web_portfolio/components/desktop_view_builder.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/views/skills/widgets/skills_custom_column.dart';

class SkillsDesktopView extends StatelessWidget {
  const SkillsDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return DesktopViewBuilder(
      isGraidentBackground: false,
      mainText: 'Why Choose Me',
      subText: 'My Expertise Area',
      children: [
        const SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: CustomSplitColumn(
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
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: CustomSplitColumn(
                  categoryName: 'Technical Skills',
                  icon: const Icon(Icons.computer),
                  children: [
                    for (var skill in kTechnicalSkills)
                      Text(
                        skill,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
        // Old skills view
        // const SizedBox(height: 30),
        // Column(
        //   children: [
        //     for (var rowIndex = 0; rowIndex < kSkillsNames.length / 4; rowIndex++)
        //       Row(
        //         children: [
        //           for (var index = 0; index < kSkillsNames.length / 2; index++)
        //             Expanded(
        //               child: Padding(
        //                 padding: EdgeInsets.only(left: index == 0 ? 0 : 9, bottom: 20),
        //                 child: OutelinedSkillsContainer(index: index, rowIndex: rowIndex),
        //               ),
        //             )
        //         ],
        //       ),
        //   ],
        // )
      ],
    );
  }
}
