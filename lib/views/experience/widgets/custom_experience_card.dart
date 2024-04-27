import 'package:flutter/material.dart';

class CustomExperienceCard extends StatelessWidget {
  const CustomExperienceCard({
    super.key,
    required this.date,
    required this.mainTitle,
    required this.description,
    this.isEducation = false,
  });

  final String date;
  final String mainTitle;
  final String description;
  final bool? isEducation;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            width: isEducation == true ? 80 : 150,
            child: Text(date, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black))),
        const SizedBox(width: 40),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mainTitle,
                maxLines: 2,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black),
              ),
              Text(
                description,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        )
      ],
    );
  }
}
