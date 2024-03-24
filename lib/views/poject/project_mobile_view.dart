import 'package:flutter/material.dart';
import 'package:web_portfolio/components/mobile_view_builder.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/views/poject/project_desktop_view.dart';

class ProjectMobileView extends StatelessWidget {
  const ProjectMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return MobileViewBuilder(
      mainText: 'My Portfolio',
      subText: 'Recent Works',
      isGraidentBackground: false,
      afterTitlePadding: 0,
      children: [
        for (var item in kProjectsPohotos)
          ProjectItemWidget(
            project: item,
            width: width * 0.7,
          ),
      ],
    );
  }
}
