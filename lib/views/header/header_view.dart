import 'package:flutter/material.dart';
import 'package:web_portfolio/views/header/header_desktop_view.dart';
import 'package:web_portfolio/views/header/header_mobile_view.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const HeaderDesktopView();
        } else {
          return const HeaderMobileView();
        }
      },
    );
  }
}
