import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileDesktopViewBuilder extends StatelessWidget {
  const MobileDesktopViewBuilder({
    super.key,
    this.showMobile,
    required this.mobileView,
    required this.desktopView,
  });

  final Widget mobileView;
  final Widget desktopView;
  final bool? showMobile;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation size) {
        if (showMobile ?? size.isMobile) {
          return mobileView;
        } else {
          return desktopView;
        }
      },
    );
  }
}
