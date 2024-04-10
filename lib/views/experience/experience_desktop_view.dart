import 'package:flutter/material.dart';
import 'package:web_portfolio/components/desktop_view_builder.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/views/experience/widgets/experience_container.dart';

class ExperienceDesktopView extends StatelessWidget {
  const ExperienceDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return DesktopViewBuilder(
      mainText: 'My Qualifications',
      subText: 'Awesome Journey',
      children: [
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (int rowIndex = 0; rowIndex < kExperiencesList.length / 2; rowIndex++)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (int index = 0; index < kExperiencesList.length / 2; index++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ExperienceContainer(experience: kExperiencesList.elementAt(2 * rowIndex + index)),
                      )
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
