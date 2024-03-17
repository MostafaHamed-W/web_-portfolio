import 'package:flutter/cupertino.dart';
import 'package:web_portfolio/utils/colors.dart';

class ProjectMobileView extends StatelessWidget {
  const ProjectMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: AppColors.kPromaryColor,
      height: height * 0.9,
      width: width,
    );
  }
}
