import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/sizes.dart';
import 'package:web_portfolio/views/navigation_bar/widgets/navigation_bar_item.dart';

class NavigationBarView extends StatelessWidget {
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          height: Sizes.navBarHeight,
          width: Sizes.defaultWidth,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                const FlutterLogo(size: 50),
                const Spacer(),
                for (var item in kNavigationItems) NavigationBarItem(onTap: () {}, text: item.text),
              ],
            ),
          ),
        );
      },
    );
  }
}
