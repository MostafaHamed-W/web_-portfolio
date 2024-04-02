import 'package:flutter/material.dart';
import 'package:web_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:web_portfolio/views/blog/blog_desktop_view.dart';
import 'package:web_portfolio/views/blog/blog_mobile_view.dart';

class BlogView extends StatelessWidget {
  const BlogView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MobileDesktopViewBuilder(mobileView: BlogMobileView(), desktopView: BlogDesktopView());
  }
}
