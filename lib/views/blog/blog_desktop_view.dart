import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_portfolio/components/desktop_view_builder.dart';
import 'package:web_portfolio/views/blog/widgets/blog_card.dart';
import 'package:webfeed/webfeed.dart';

class BlogDesktopView extends StatelessWidget {
  const BlogDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final articles = context.watch<List<RssItem>?>();
    if (articles == null) return const CircularProgressIndicator();
    return DesktopViewBuilder(
      mainText: 'Blog',
      subText: 'My Blogs Area',
      isGraidentBackground: true,
      children: [
        const SizedBox(height: 30),
        Row(
          children: [
            for (var article in articles)
              Expanded(
                child: BlogCard(
                  article: article,
                ),
              ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
