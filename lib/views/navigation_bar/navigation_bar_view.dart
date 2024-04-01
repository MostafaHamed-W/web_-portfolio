import 'package:flutter/material.dart';
import 'package:web_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:web_portfolio/views/navigation_bar/navigation_bar_dekstop_view.dart';
import 'package:web_portfolio/views/navigation_bar/navigation_bar_mobile_view.dart';

class NavigationBarView extends StatelessWidget {
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = MediaQuery.of(context).size.width < 950;
    return MobileDesktopViewBuilder(
        mobileView: const NavigationBarMobileView(),
        desktopView: NavigationBarDesktopView(
          isSmall: isSmall,
        ));
  }
}
