import 'package:flutter/material.dart';
import 'package:web_portfolio/components/desktop_view_builder.dart';

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

class BlogCard extends StatelessWidget {
  const BlogCard({
    super.key,
    this.isMobile = false,
  });

  final bool isMobile;

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
              'How to build a portfolio',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('2 January 2022'),
                Text(
                  'Hello world thank you' * 30,
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
