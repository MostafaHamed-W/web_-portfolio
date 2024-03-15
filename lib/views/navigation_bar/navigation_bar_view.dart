import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/sizes.dart';
import 'package:web_portfolio/views/navigation_bar/widgets/navigation_bar_item.dart';

class NavigationBarView extends StatelessWidget {
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        if (size.isMobile) {
          return SizedBox(
            // color: Colors.white,
            height: 60,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset('assets/images/logo.png', height: 40),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        return SizedBox(
          height: Sizes.navBarHeight,
          width: Sizes.defaultWidth,
          // color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Image.asset('assets/images/logo.png', height: 70),
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
