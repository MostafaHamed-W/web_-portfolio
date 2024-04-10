import 'package:flutter/material.dart';
import 'package:web_portfolio/components/desktop_view_builder.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/hover_extensions.dart';

class ProjectDesktopView extends StatelessWidget {
  const ProjectDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return DesktopViewBuilder(
      height: 1500,
      mainText: 'My Portfolio',
      subText: 'Recent Works',
      children: [
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
      ).moveUpHover,
    );
  }
}
