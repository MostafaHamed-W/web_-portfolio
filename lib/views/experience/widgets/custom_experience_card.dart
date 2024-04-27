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
        Text(date, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(width: 50),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mainTitle,
              maxLines: 2,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(description),
          ],
        )
      ],
    );
  }
}
