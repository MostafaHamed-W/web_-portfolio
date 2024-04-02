import 'package:flutter/material.dart';
import 'package:web_portfolio/views/blog/blog_view.dart';
import 'package:web_portfolio/views/drawer/drawer_view.dart';
import 'package:web_portfolio/views/experience/experience_view.dart';
import 'package:web_portfolio/views/header/header_view.dart';
import 'package:web_portfolio/views/navigation_bar/navigation_bar_view.dart';

import 'package:web_portfolio/views/poject/project_view.dart';
import 'package:web_portfolio/views/skills/skills_view.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final ScrollController scrollController = ScrollController(
      // Set the initial offset
      initialScrollOffset: 2800,
    );
    return Scaffold(
      drawer: const DrawerView(),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            const NavigationBarView(),
            const HeaderView(),
            const ProjectView(),
            const SkillsView(),
            const ExperienceView(),
            const BlogView(),
            SizedBox(
              height: height,
              width: width,
            )
          ],
        ),
      ),
    );
  }
}
