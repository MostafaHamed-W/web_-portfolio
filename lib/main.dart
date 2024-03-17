import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/views/portfolio/portfolio_view.dart';

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
        textTheme: TextTheme(
          labelSmall: GoogleFonts.montserrat(),
          labelMedium: GoogleFonts.montserrat(),
          labelLarge: GoogleFonts.montserrat(),
          headlineSmall: GoogleFonts.montserrat(),
          headlineMedium: GoogleFonts.montserrat(),
          titleSmall: GoogleFonts.montserrat(),
          titleMedium: GoogleFonts.montserrat(),
          titleLarge: GoogleFonts.montserrat(),
          headlineLarge: GoogleFonts.montserrat(),
          displaySmall: GoogleFonts.montserrat(),
          displayMedium: GoogleFonts.montserrat().copyWith(
            color: Colors.black,
          ),
          displayLarge: GoogleFonts.montserrat(),
          bodySmall: GoogleFonts.montserrat(),
          bodyMedium: GoogleFonts.montserrat(),
          bodyLarge: GoogleFonts.montserrat(),
        ),
        useMaterial3: true,
      ),
      home: const PortfolioView(),
    );
  }
}
