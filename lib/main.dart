import 'package:flutter/material.dart';
import 'package:web_portfolio/desktop/desktop_view.dart';
import 'package:web_portfolio/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mostafa Hamed',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.kPromaryColor,
          // background: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const DesktopView(),
    );
  }
}
