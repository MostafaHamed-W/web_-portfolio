import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/views/experience/models/experience_info.dart';

class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer({
    super.key,
    required this.experience,
  });

  final ExperienceInfo experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.kPrimaryColor, width: 3),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(experience.company, style: _textStyle(isBold: true)),
          Text(experience.timeline, style: _textStyle()),
          for (var item in experience.descriptions) Text(item, style: _textStyle()),
        ],
      ),
    );
  }
}

TextStyle _textStyle({bool? isBold}) {
  return TextStyle(fontSize: 15, height: 1.3, fontWeight: isBold == true ? FontWeight.bold : FontWeight.normal);
}
