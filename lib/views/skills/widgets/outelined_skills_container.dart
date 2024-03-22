import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/utils/constants.dart';

class OutelinedSkillsContainer extends StatelessWidget {
  const OutelinedSkillsContainer({
    super.key,
    required this.index,
    required this.rowIndex,
    this.isMobile = false,
  });

  final int index;
  final int rowIndex;
  final bool? isMobile;

  @override
  Widget build(BuildContext context) {
    final parseIndex = isMobile == false ? ((2 * index) + rowIndex) : index;
    return Container(
      width: isMobile == false ? null : double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.kPrimaryColor, width: 3),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        kSkillsNames.elementAt(parseIndex),
      ),
    );
  }
}
