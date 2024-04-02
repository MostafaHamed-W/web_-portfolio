import 'package:flutter/material.dart';
import 'package:web_portfolio/components/mobile_view_builder.dart';

class BlogMobileView extends StatelessWidget {
  const BlogMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MobileViewBuilder(
      mainText: 'Blog',
      subText: 'My Blogs Area',
      isGraidentBackground: true,
      children: [],
    );
  }
}
