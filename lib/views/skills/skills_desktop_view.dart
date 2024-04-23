import 'package:flutter/material.dart';
import 'package:web_portfolio/components/desktop_view_builder.dart';
import 'package:web_portfolio/utils/constants.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SkillsCustomColumn(
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
            Expanded(
              child: SkillsCustomColumn(
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
    required this.children,
    required this.categoryName,
    required this.icon,
  });
  final List<Widget> children;
  final String categoryName;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(child: icon),
                  const WidgetSpan(child: SizedBox(width: 10)),
                  TextSpan(
                    text: categoryName.toUpperCase(),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          )
        ],
      ),
    );
  }
}
