import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/views/experience/models/experience_info.dart';

const kSkillsNames = [
  "Flutter",
  "Dart",
  "Riverpod",
  "Bloc",
  "GetX",
  "Firebase",
  "Github",
  'IOS',
];

const kAvertaFont = 'Averta';
const kSaipersGate = 'assets/images/projects/saipers_gate.png';
const kOdexss = 'assets/images/projects/odexss.png';
const kAlameya = 'assets/images/projects/alameya.png';
const kInstaClone = 'assets/images/projects/instagram.png';
const kBookHunter = 'assets/images/projects/book_hunter.png';
const kGameFusion = 'assets/images/projects/game_fusion.png';
const kCartScope = 'assets/images/projects/cart_scope.png';
const kSpotSavvy = 'assets/images/projects/spot_savvy.png';
const kBrightMemo = 'assets/images/projects/bight_memo.png';
const kSpotSavvyBlack = 'assets/images/projects/spot_savvy_black.png';
const kPulseTalk = 'assets/images/projects/pulse_talk.png';

const List<String> kProjectsPohotos = [
  kSaipersGate,
  kGameFusion,
  kOdexss,
  kAlameya,
  kInstaClone,
  kBookHunter,
  kSpotSavvy,
  kCartScope,
  kBrightMemo,
  kPulseTalk,
];

const kScreenPadding = EdgeInsets.symmetric(horizontal: 60);

class HireMeButton extends StatelessWidget {
  const HireMeButton({super.key, this.isSmall = false});
  final bool isSmall;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kPrimaryColor,
        padding: EdgeInsets.symmetric(vertical: isSmall ? 10 : 17, horizontal: isSmall ? 8 : 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        'Hire Me',
        style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white, fontSize: isSmall ? 12 : null),
      ),
    );
  }
}

final kExperiencesList = [
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
