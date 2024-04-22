import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_portfolio/components/desktop_view_builder.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/views/skills/widgets/outelined_skills_container.dart';

class SkillsDesktopView extends StatelessWidget {
  const SkillsDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DesktopViewBuilder(
      isGraidentBackground: true,
      mainText: 'Why Choose Me',
      subText: 'My Expertise Area',
      children: [
        SizedBox(height: 30),
        Row(
          children: [
            Expanded(
              child: SkillsCustomColumn(),
            ),
            Expanded(
              child: SkillsCustomColumn(),
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

class SkillsCustomColumn extends StatelessWidget {
  const SkillsCustomColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text.rich(
            TextSpan(
              children: [
                const WidgetSpan(child: Icon(Icons.co_present)),
                const WidgetSpan(child: SizedBox(width: 10)),
                TextSpan(
                  text: 'Personal Skills'.toUpperCase(),
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('● Very quick learner'),
              Text('● Self motivated, hardworking'),
              Text('● Good communication skills'),
              Text('● Presentation and speaker'),
            ],
          ),
        )
      ],
    );
  }
}
