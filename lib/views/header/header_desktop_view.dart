import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/sizes.dart';
import 'package:web_portfolio/views/header/widgets/header_body.dart';

class HeaderDesktopView extends StatelessWidget {
  const HeaderDesktopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.defaultHeight,
      width: Sizes.defaultWidth,
      color: Colors.white,
      child: const Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: HeaderBody(),
          ),
          SizedBox(width: 50),
          FlutterLogo(size: 300)
        ],
      ),
    );
  }
}
