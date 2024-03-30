import 'package:auto_size_text/auto_size_text.dart';
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
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.kPrimaryColor,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(experience.company, style: _textStyle(isBold: true)),
          const SizedBox(height: 5),
          AutoSizeText(experience.timeline, style: _textStyle(isGrey: true), maxLines: 1),
          const SizedBox(height: 5),
          for (var item in experience.descriptions) Text(item, style: _textStyle()),
        ],
      ),
    );
  }
}

TextStyle _textStyle({bool? isBold, bool isGrey = false}) {
  return TextStyle(
      fontSize: 17,
      height: 1.3,
      fontWeight: isBold == true ? FontWeight.bold : FontWeight.normal,
      color: isGrey == true ? Colors.grey : Colors.black);
}
