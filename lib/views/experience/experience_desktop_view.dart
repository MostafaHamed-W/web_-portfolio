import 'package:flutter/material.dart';
import 'package:web_portfolio/components/desktop_view_builder.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/views/experience/models/experience_info.dart';

class ExperienceDesktopView extends StatelessWidget {
  const ExperienceDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final firstExperience = experiences.first;
    return DesktopViewBuilder(
      mainText: 'My Qualifications',
      subText: 'Awesome Journey',
      children: [
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.kPrimaryColor, width: 3),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(firstExperience.company,
                  style: const TextStyle(
                    fontSize: 20,
                    height: 1.3,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                firstExperience.timeline,
                style: const TextStyle(
                  fontSize: 20,
                  height: 1.3,
                ),
              ),
              for (var item in firstExperience.descriptions)
                Text(
                  item,
                  style: const TextStyle(
                    fontSize: 20,
                    height: 1.3,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

final experiences = [
  ExperienceInfo(
    company: 'Mobile Application Developer @Expert CO.LTD',
    timeline: 'Nov 2023  - Present',
    descriptions: [
      '- Developed Saipers Gate Application',
      '- Deploey Saudi Authority for Intellectual Property HR App',
      '- Worked in team from 3 developers'
    ],
  ),
  ExperienceInfo(
    company: 'Mobile Application Developer @Tanta University UMIS',
    timeline: 'Feb 2023 - Nov 2023  (10 mos)',
    descriptions: [
      '- Created UMIS Application for students & doctors',
      '- Worked in team from 4 developers',
    ],
  ),
];
