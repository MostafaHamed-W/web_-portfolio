import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/views/blog/blog_view.dart';
import 'package:web_portfolio/views/drawer/drawer_view.dart';
import 'package:web_portfolio/views/experience/experience_view.dart';
import 'package:web_portfolio/views/header/header_view.dart';
import 'package:web_portfolio/views/navigation_bar/navigation_bar_view.dart';

import 'package:web_portfolio/views/poject/project_view.dart';
import 'package:web_portfolio/views/skills/skills_view.dart';

final ScrollController scrollController = ScrollController(
    // Set the initial offset
    // initialScrollOffset: 0,
    );

class PortfolioView extends StatefulWidget {
  const PortfolioView({super.key});

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> with AfterLayoutMixin {
  final projectsKey = GlobalKey();
  final skillsKey = GlobalKey();
  final experiencesKey = GlobalKey();
  final blogKey = GlobalKey();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    print(getPositions(blogKey));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: const DrawerView(),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            const NavigationBarView(),
            const HeaderView(),
            ProjectView(key: projectsKey),
            SkillsView(key: skillsKey),
            ExperienceView(key: experiencesKey),
            BlogView(key: blogKey),
            SizedBox(height: height, width: width)
          ],
        ),
      ),
    );
  }
}

double getPositions(GlobalKey key) {
  final RenderBox renderBox = key.currentContext?.findRenderObject() as RenderBox;
  final position = renderBox.localToGlobal(Offset.zero);
  final scrollOffset = position.dy;
  return scrollOffset;
}
