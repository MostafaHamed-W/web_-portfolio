import 'package:flutter/material.dart';
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Expanded(child: FlutterLogo(size: 0.3 * height)),
            const HeaderBody(isMobile: true),
          ],
        ),
      ),
    );
  }
}
