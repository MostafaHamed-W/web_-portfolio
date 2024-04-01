import 'package:flutter/material.dart';
import 'package:web_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:web_portfolio/views/drawer/drawer_mobile_view.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MobileDesktopViewBuilder(mobileView: DrawerMobileView(), desktopView: SizedBox());
  }
}
