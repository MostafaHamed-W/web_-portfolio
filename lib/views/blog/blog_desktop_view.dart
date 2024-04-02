import 'package:flutter/material.dart';
import 'package:web_portfolio/components/desktop_view_builder.dart';

class BlogDesktopView extends StatelessWidget {
  const BlogDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DesktopViewBuilder(
      mainText: '',
      subText: '',
      isGraidentBackground: true,
      children: [],
    );
  }
}
