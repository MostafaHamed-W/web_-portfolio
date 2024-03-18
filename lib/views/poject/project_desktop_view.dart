import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/sizes.dart';

class ProjectDesktopView extends StatelessWidget {
  const ProjectDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 950;
    return Container(
      // color: AppColors.kPrimaryColor,
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: [
      //       Theme.of(context).colorScheme.background,
      //       const Color(0xffebebec),
      //     ],
      //   ),
      // ),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      height: 1500,
      width: Sizes.defaultWidth,
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text(
            'My Portfolio',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: AppColors.kPrimaryColor, fontSize: 18),
          ),
          Text(
            'Recent Works',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                mainAxisExtent: 350,
              ),
              children: [
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Image.asset(kSaipersGate),
                ),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Image.asset(kGameFusion),
                ),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Image.asset(kAlameya),
                ),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Image.asset(kOdexss),
                ),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Image.asset(kInstaClone),
                ),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Image.asset(kBookHunter),
                ),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Image.asset(kSpotSavvy),
                ),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Image.asset(kCartScope),
                ),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Image.asset(kPulseTalk),
                ),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Image.asset(kBrightMemo),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
