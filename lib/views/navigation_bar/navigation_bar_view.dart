import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:web_portfolio/views/navigation_bar/navigation_bar_dekstop_view.dart';
import 'package:web_portfolio/views/navigation_bar/navigation_bar_mobile_view.dart';

class NavigationBarView extends StatelessWidget {
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        final bool isSmall = size.screenSize.width < 950;
        return MobileDesktopViewBuilder(
            mobileView: const NavigationBarMobileView(),
            desktopView: NavigationBarDesktopView(
              isSmall: isSmall,
            ));
      },
    );
  }
}
