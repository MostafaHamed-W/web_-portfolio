import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/drawer_view.dart';
import 'package:web_portfolio/views/header/header_view.dart';
import 'package:web_portfolio/views/navigation_bar/navigation_bar_view.dart';

import 'package:web_portfolio/views/poject/project_view.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: const DrawerView(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavigationBarView(),
            const HeaderView(),
            const ProjectView(),
            Container(
              height: 864,
              width: 1300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.background,
                    const Color(0xffebebec),
                  ],
                ),
              ),
            ),
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
