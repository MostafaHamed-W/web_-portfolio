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
              Text(firstExperience.company, style: _textStyle(isBold: true)),
              Text(firstExperience.timeline, style: _textStyle()),
              for (var item in firstExperience.descriptions) Text(item, style: _textStyle()),
            ],
          ),
        ),
      ],
    );
  }
}

TextStyle _textStyle({bool? isBold}) {
  return TextStyle(fontSize: 20, height: 1.3, fontWeight: isBold == true ? FontWeight.bold : FontWeight.normal);
}

final experiences = [
  ExperienceInfo(
    company: 'Flutter Developer @Tanta University UMIS',
    timeline: 'Feb 2023 - Oct 2023  (9 mos) - Tanta',
    descriptions: [
      '- Working as junior flutter developer',
      '- Created UMIS Application for students & doctors',
      '- Worked in team from 4 developers',
    ],
  ),
  ExperienceInfo(
    company: 'Flutter Developer @Coding Site(StartUp)',
    timeline: 'Oct 2023 - Nov 2023  (1 mos) - New 15th of May',
    descriptions: [
      '- Making within e comercing & Waregouse projects ',
      '- Developing MyFridge Mobile application',
    ],
  ),
  ExperienceInfo(
    company: 'Mobile Application Developer @Expert CO.LTD',
    timeline: 'Nov 2023  - Present - Saudia',
    descriptions: [
      '- Developed Odex SS Application',
      '- Developed & Maintained Al-Alameya Application ',
      '- Worked in team from 3 developers'
    ],
  ),
  ExperienceInfo(
    company: 'Mobile Application Developer @SAIP',
    timeline: 'Jan 2024  - Present - Saudia',
    descriptions: [
      '- Developing Saipers Gate Application',
      '- Developed & Maintained Saipers Gate Application ',
      '- Deploying & Version Update Saipers Gate'
    ],
  ),
];
