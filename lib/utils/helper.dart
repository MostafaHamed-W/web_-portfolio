import 'package:flutter/material.dart';

BoxDecoration getGraidentBackround(BuildContext context) {
  return BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Theme.of(context).colorScheme.background,
        const Color(0xffebebec),
      ],
    ),
  );
}
