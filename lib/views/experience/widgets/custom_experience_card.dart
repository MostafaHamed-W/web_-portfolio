import 'package:flutter/material.dart';

class CustomExperienceCard extends StatelessWidget {
  const CustomExperienceCard({
    super.key,
    required this.date,
    required this.mainTitle,
    required this.description,
  });

  final String date;
  final String mainTitle;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(date, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
        const SizedBox(width: 40),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mainTitle,
              maxLines: 2,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            Text(description, style: const TextStyle(fontSize: 12)),
          ],
        )
      ],
    );
  }
}
