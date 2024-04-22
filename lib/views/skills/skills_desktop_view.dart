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
    return DesktopViewBuilder(
      isGraidentBackground: true,
      mainText: 'Why Choose Me',
      subText: 'My Expertise Area',
      children: [
        const SizedBox(height: 30),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text.rich(
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
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(children: [
                Text.rich(
                  TextSpan(
                    children: [
                      const WidgetSpan(child: Icon(Icons.computer)),
                      const WidgetSpan(child: SizedBox(width: 10)),
                      TextSpan(
                        text: 'Technical Skills'.toUpperCase(),
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                )
              ]),
            )
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
