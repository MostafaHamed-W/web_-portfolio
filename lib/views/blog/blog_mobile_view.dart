import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_portfolio/components/mobile_view_builder.dart';
import 'package:web_portfolio/views/blog/widgets/blog_card.dart';
import 'package:webfeed/domain/rss_feed.dart';
import 'package:webfeed/domain/rss_item.dart';

class BlogMobileView extends StatelessWidget {
  const BlogMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final articles = context.watch<List<RssItem>?>();
    if (articles == null) return const CircularProgressIndicator();
    return MobileViewBuilder(
      mainText: 'Blog',
      subText: 'My Blogs Area',
      isGraidentBackground: true,
      children: [
        for (var article in articles)
          BlogCard(
            isMobile: true,
            article: article,
          ),
      ],
    );
  }
}
