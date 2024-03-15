import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_portfolio/views/header/header_desktop_view.dart';
import 'package:web_portfolio/views/header/header_mobile_view.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        if (size.isMobile) {
          return const HeaderMobileView();
        } else {
          return const HeaderDesktopView();
        }
      },
    );
  }
}
