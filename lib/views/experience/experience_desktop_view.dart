import 'package:flutter/material.dart';
import 'package:web_portfolio/components/desktop_view_builder.dart';
import 'package:web_portfolio/views/experience/widgets/custom_experience_card.dart';
import 'package:web_portfolio/views/skills/widgets/skills_custom_column.dart';

class ExperienceDesktopView extends StatelessWidget {
  const ExperienceDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DesktopViewBuilder(
      mainText: 'My Qualifications',
      subText: 'Awesome Journey',
      children: [
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 0),
                child: CustomSplitColumn(
                  categoryName: 'Education & Trainings',
                  icon: Icon(Icons.science),
                  children: [
                    CustomExperienceCard(
                      date: 'July 2021',
                      mainTitle: 'Faculty Of Engineering Tanta University',
                      description:
                          'Department: Computer and Automatic Control\nGraduation Project: Online Exam Platform',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: CustomSplitColumn(
                  categoryName: 'Professional Experience',
                  icon: Icon(Icons.work),
                  children: [
                    CustomExperienceCard(
                      date: 'Jan 2023 to Sep 2023 ',
                      mainTitle: 'Junior Flutter Developer at UMIS',
                      description:
                          'Tanta, Egypt · On-site\nUniversity Management Information Systems (MIS)\nWorking as flutter develoepr for one year\nDeveloped and implemented UMIS application from scratch',
                    ),
                    SizedBox(height: 30),
                    CustomExperienceCard(
                      date: 'Sep 2023 to Nov 2023',
                      mainTitle: 'Flutter Developer at Coding Site',
                      description: 'New 15th of May, Egypt · On-site\nWorking as junior flutter developer',
                    ),
                    SizedBox(height: 30),
                    CustomExperienceCard(
                      date: 'Nov 2023 to Apr 2024',
                      mainTitle: 'Flutter Developer at Expert CO.LTD',
                      description:
                          'Riyadh, Saudi Arabia · Remote\nWorking as Mobile Application Developer\nDeveloping Odex SS Mobile Application\nFor employees and managers',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        // Old experience view
        // const SizedBox(height: 20),
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     for (int rowIndex = 0; rowIndex < kExperiencesList.length / 2; rowIndex++)
        //       Expanded(
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.stretch,
        //           children: [
        //             for (int index = 0; index < kExperiencesList.length / 2; index++)
        //               Padding(
        //                 padding: const EdgeInsets.all(8.0),
        //                 child: ExperienceContainer(experience: kExperiencesList.elementAt(2 * rowIndex + index)),
        //               )
        //           ],
        //         ),
        //       ),
        //   ],
        // ),
      ],
    );
  }
}
