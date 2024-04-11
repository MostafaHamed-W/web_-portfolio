import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_portfolio/views/blog/blog_view.dart';
import 'package:web_portfolio/views/drawer/drawer_view.dart';
import 'package:web_portfolio/views/experience/experience_view.dart';
import 'package:web_portfolio/views/header/header_view.dart';
import 'package:web_portfolio/views/navigation_bar/navigation_bar_view.dart';
import 'package:web_portfolio/views/poject/project_view.dart';
import 'package:web_portfolio/views/skills/skills_view.dart';

class PortfolioView extends StatefulWidget {
  const PortfolioView({super.key});

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> with AfterLayoutMixin {
  final ScrollController scrollController = ScrollController(
      // Set the initial offset
      // initialScrollOffset: 0,
      );

  final projectsKey = GlobalKey();
  final skillsKey = GlobalKey();
  final experiencesKey = GlobalKey();
  final blogKey = GlobalKey();
  final homeKey = GlobalKey();
  final introKey = GlobalKey();
  List<NavigationItem> navigationItems = [];

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    setState(() {
      navigationItems = [
        NavigationItem('Home', key: homeKey),
        NavigationItem('Intro', key: introKey),
        NavigationItem('Experience', key: experiencesKey),
        NavigationItem('Skills', key: skillsKey),
        NavigationItem('Projecs', key: projectsKey),
      ];
    });
    // print(getPosition(blogKey));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return MultiProvider(
      providers: [
        ProxyProvider0<List<NavigationItem>>(update: (_, __) => navigationItems),
        ChangeNotifierProvider<ScrollController>(create: (_) => scrollController),
      ],
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            scrollController.animateTo(
              0,
              duration: const Duration(milliseconds: 700),
              curve: Curves.easeInOut,
            );
          },
          child: const Icon(Icons.arrow_upward),
        ),
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
      ),
    );
  }
}

double getPosition(GlobalKey key) {
  final RenderBox renderBox = key.currentContext?.findRenderObject() as RenderBox;
  final position = renderBox.localToGlobal(Offset.zero);
  final scrollOffset = position.dy;
  return scrollOffset;
}

class NavigationItem {
  final String text;
  final GlobalKey key;
  const NavigationItem(this.text, {required this.key});

  double get position => getPosition(key);
}
