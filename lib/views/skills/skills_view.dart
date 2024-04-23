import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:web_portfolio/views/skills/skills_desktop_view.dart';
import 'package:web_portfolio/views/skills/skills_mobile_view.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation size) {
        return MobileDesktopViewBuilder(
          showMobile: size.screenSize.width < 1100,
          mobileView: const SkillsMobileView(),
          desktopView: const SkillsDesktopView(),
        );
      },
    );
  }
}
