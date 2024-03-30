import 'package:flutter/material.dart';
import 'package:web_portfolio/components/mobile_view_builder.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/views/experience/widgets/experience_container.dart';

class ExperienceMobileView extends StatelessWidget {
  const ExperienceMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return MobileViewBuilder(
      mainText: 'My Qualifications',
      subText: 'Awesome Journey',
      isGraidentBackground: false,
      afterTitlePadding: 20,
      hasPadding: true,
      children: [
        Column(
          children: [
            for (var experience in kExperiencesList)
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ExperienceContainer(experience: experience),
              ),
          ],
        )
      ],
    );
  }
}
