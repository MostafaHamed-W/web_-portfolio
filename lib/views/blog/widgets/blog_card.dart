import 'package:flutter/material.dart';
import 'package:web_portfolio/views/experience/widgets/experience_container.dart';
import 'package:webfeed/domain/rss_item.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({
    super.key,
    this.isMobile = false,
    this.article,
  });

  final bool isMobile;
  final RssItem? article;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 3.0,
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Colors.redAccent,
            ),
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: isMobile ? 20 : 40, horizontal: 8),
            child: Text(
              article?.title ?? '',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Text(article?.pubDate.toString() ?? '', style: textStyle(isGrey: true, isBold: false, fontSize: 15)),
                const SizedBox(height: 8),
                Text(
                  article?.content?.value ?? '',
                  maxLines: 3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
