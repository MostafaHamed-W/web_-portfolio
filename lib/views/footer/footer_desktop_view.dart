import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/sizes.dart';

class FooterDesktopView extends StatelessWidget {
  const FooterDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final currentYear = DateTime.now().year;
    return Container(
      width: Sizes.defaultWidth,
      height: 100,
      padding: kScreenPadding,
      child: Row(
        children: [
          Text('© Mostafa Hamed $currentYear -- '),
          InkWell(
            onTap: () => launchUrlString('https://github.com/MostafaHamed-W'),
            mouseCursor: MaterialStateMouseCursor.clickable,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            child: const Text(
              'See the source code',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }
}
