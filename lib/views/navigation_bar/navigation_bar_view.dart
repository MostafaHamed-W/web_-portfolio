import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
                  SvgPicture.asset(
                    'assets/images/2.svg',
                    height: 40,
                  ),
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
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/2.svg',
                  height: 60,
                ),
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
