import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/sizes.dart';
import 'package:web_portfolio/views/navigation_bar/widgets/navigation_bar_item.dart';

class NavigationBarDesktopView extends StatelessWidget {
  const NavigationBarDesktopView({
    super.key,
    required this.isSmall,
  });

  final bool isSmall;

  @override
  Widget build(BuildContext context) {
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
            for (var item in kNavigationItems) NavigationBarItem(onTap: () {}, text: item.text, isSmall: isSmall),
            const SizedBox(width: 20),
            HireMeButton(isSmall: isSmall),
          ],
        ),
      ),
    );
  }
}
