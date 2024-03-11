import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/constants.dart';

class NavigationBarView extends StatelessWidget {
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          height: Constants.navBarHeight,
          width: Constants.defaultWidth,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                const FlutterLogo(
                  size: 50,
                ),
                const Spacer(),
                InkWell(
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {},
                  child: const Text(
                    'About',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
