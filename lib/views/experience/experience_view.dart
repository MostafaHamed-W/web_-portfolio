import 'package:flutter/material.dart';
import 'package:web_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:web_portfolio/views/experience/experience_desktop_view.dart';
import 'package:web_portfolio/views/experience/experience_mobile_view.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MobileDesktopViewBuilder(mobileView: ExperienceMobileView(), desktopView: ExperienceDesktopView());
  }
}
