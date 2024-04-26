import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:web_portfolio/utils/hover_extensions.dart';
import 'package:web_portfolio/views/footer/widgets/social_info.dart';
import 'package:web_portfolio/views/header/widgets/header_body.dart';

class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.9,
      width: width,
      // color: Colors.white,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.background,
            const Color(0xffebebec),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var social in socials)
                      IconButton(
                        color: Colors.black,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        onPressed: () => launchUrlString(social.url),
                        icon: social.icon,
                      ).moveUpHover,
                  ],
                ),
                const SizedBox(width: 15),
                const Expanded(child: HeaderBody(isMobile: true)),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Image.asset(
                'assets/images/pic.png',
                // height: 500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
