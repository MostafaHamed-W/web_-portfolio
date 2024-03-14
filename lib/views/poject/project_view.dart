import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_portfolio/views/poject/project_desktop_view.dart';
import 'package:web_portfolio/views/poject/project_mobile_view.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation size) {
        if (size.isMobile) {
          return const ProjectMobileView();
        } else {
          return const ProjectDesktopView();
        }
      },
    );
  }
}
