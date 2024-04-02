import 'package:flutter/material.dart';
import 'package:web_portfolio/components/desktop_view_builder.dart';
import 'package:web_portfolio/views/blog/widgets/blog_card.dart';

class BlogDesktopView extends StatelessWidget {
  const BlogDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return DesktopViewBuilder(
      mainText: 'Blog',
      subText: 'My Blogs Area',
      isGraidentBackground: true,
      children: [
        const SizedBox(height: 30),
        Row(
          children: [
            for (int i = 0; i < 2; i++)
              const Expanded(
                child: BlogCard(),
              ),
          ],
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
