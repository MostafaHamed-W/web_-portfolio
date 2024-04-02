import 'package:flutter/material.dart';
import 'package:web_portfolio/components/mobile_view_builder.dart';
import 'package:web_portfolio/views/blog/blog_desktop_view.dart';

class BlogMobileView extends StatelessWidget {
  const BlogMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return MobileViewBuilder(
      mainText: 'Blog',
      subText: 'My Blogs Area',
      isGraidentBackground: true,
      children: [
        for (int i = 0; i < 2; i++) const BlogCard(isMobile: true),
      ],
    );
  }
}
