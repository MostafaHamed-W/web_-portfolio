import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:web_portfolio/views/blog/blog_desktop_view.dart';
import 'package:web_portfolio/views/blog/blog_mobile_view.dart';
import 'package:webfeed/webfeed.dart';
import 'package:http/http.dart' as http;

class BlogView extends StatelessWidget {
  const BlogView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureProvider(
      create: (_) => getArticles(),
      initialData: getArticles(),
      child: const MobileDesktopViewBuilder(
        mobileView: BlogMobileView(),
        desktopView: BlogDesktopView(),
      ),
    );
  }
}

getArticles() async {
  const url = 'https://cors-anywhere.herokuapp.com/https://medium.com/feed/@muhamad_haris';
  final uri = Uri.parse(url);
  final response = await http.get(uri);
  final parseResponse = RssFeed.parse(response.body);
  print(parseResponse);
  return parseResponse;
}
