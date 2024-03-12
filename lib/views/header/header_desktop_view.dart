import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_portfolio/utils/sizes.dart';
import 'package:web_portfolio/views/header/widgets/header_body.dart';

class HeaderDesktopView extends StatelessWidget {
  const HeaderDesktopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 764,
      width: Sizes.defaultWidth,
      // color: Colors.white,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(child: HeaderBody()),
          // const SizedBox(width: 50),
          Expanded(
            child: Image.asset(
              'assets/images/mainpic2.png',
              height: 700,
            ),
          ),
          const SizedBox(width: 40),
        ],
      ),
    );
  }
}
