import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/utils/sizes.dart';

class ProjectDesktopView extends StatelessWidget {
  const ProjectDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 950;
    return Container(
      // color: AppColors.kPromaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      height: Sizes.defaultHeight,
      width: Sizes.defaultWidth,
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text(
            'My Portfolio',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: AppColors.kPrimaryColor, fontSize: 18),
          ),
          Text(
            'Recent Works',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                // mainAxisExtent: 200,
              ),
              children: [
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Image.asset('assets/images/projects/1.png'),
                ),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Image.asset('assets/images/projects/2.png'),
                ),
                InkWell(
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Image.asset('assets/images/projects/3.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
