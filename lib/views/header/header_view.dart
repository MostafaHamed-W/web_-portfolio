import 'package:flutter/material.dart';

import 'package:web_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:web_portfolio/views/header/header_desktop_view.dart';
import 'package:web_portfolio/views/header/header_mobile_view.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
      showMobile: MediaQuery.of(context).size.width < 800,
      mobileView: const HeaderMobileView(),
      desktopView: const HeaderDesktopView(),
    );
  }
}
