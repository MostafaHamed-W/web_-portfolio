import 'package:flutter/cupertino.dart';
import 'package:web_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:web_portfolio/views/poject/project_desktop_view.dart';
import 'package:web_portfolio/views/poject/project_mobile_view.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MobileDesktopViewBuilder(mobileView: ProjectMobileView(), desktopView: ProjectDesktopView());
  }
}
