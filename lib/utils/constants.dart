import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/views/navigation_bar/widgets/navigation_bar_item.dart';

const kNavigationItems = [
  NavigationItem('Home'),
  NavigationItem('Intro'),
  NavigationItem('Experience'),
  NavigationItem('Skills'),
  NavigationItem('Projecs'),
];

const kAvertaFont = 'Averta';

class HireMeButton extends StatelessWidget {
  const HireMeButton({super.key, this.isSmall = false});
  final bool isSmall;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kPromaryColor,
        padding: EdgeInsets.symmetric(vertical: isSmall ? 10 : 17, horizontal: isSmall ? 8 : 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        'Hire Me',
        style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white, fontSize: isSmall ? 12 : null),
      ),
    );
  }
}
