import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/views/navigation_bar/widgets/navigation_bar_item.dart';

const kNavigationItems = [
  NavigationItem('Home'),
  NavigationItem('Intro'),
  NavigationItem('Experience'),
  NavigationItem('Skills'),
  NavigationItem('Projecs'),
];

const kAvertaFont = 'Averta';
const kSaipersGate = 'assets/images/projects/saipers_gate.png';
const kOdexss = 'assets/images/projects/odexss.png';
const kAlameya = 'assets/images/projects/alameya.png';
const kInstaClone = 'assets/images/projects/insta_clone.png';
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
