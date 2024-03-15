import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_portfolio/views/header/widgets/header_body.dart';

class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.9,
      width: width,
      // color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            const HeaderBody(isMobile: true),
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
