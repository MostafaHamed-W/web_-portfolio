import 'package:flutter/cupertino.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/views/poject/project_desktop_view.dart';

class ProjectMobileView extends StatelessWidget {
  const ProjectMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      child: Column(
        children: [
          for (var item in kProjectsPohotos)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: ProjectItemWidget(project: item),
            ),
        ],
      ),
    );
  }
}
