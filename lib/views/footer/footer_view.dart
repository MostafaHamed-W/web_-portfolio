import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:web_portfolio/views/footer/footer_desktop_view.dart';
import 'package:web_portfolio/views/footer/footer_mobile_view.dart';

class FooterView extends StatelessWidget {
  const FooterView({super.key});

  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
      showMobile: MediaQuery.of(context).size.width < 780,
      mobileView: const FooterMobileView(),
      desktopView: const FooterDesktopView(),
    );
  }
}
