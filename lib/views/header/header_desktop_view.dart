import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/views/header/widgets/header_body.dart';

class HeaderDesktopView extends StatelessWidget {
  const HeaderDesktopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.defaultHeight,
      width: Constants.defaultWidth,
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
