import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/sizes.dart';

class ProjectDesktopView extends StatelessWidget {
  const ProjectDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 950;
    return Container(
      height: 1500,
      padding: const EdgeInsets.symmetric(horizontal: 50),
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
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                mainAxisExtent: 350,
              ),
              children: [
                for (var project in kProjectsPohotos) ProjectItemWidget(project: project),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectItemWidget extends StatelessWidget {
  const ProjectItemWidget({
    super.key,
    required this.project,
    this.width,
  });

  final String project;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Image.asset(
        project,
        width: width,
      ),
    );
  }
}
