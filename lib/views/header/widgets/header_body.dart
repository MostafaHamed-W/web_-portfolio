import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/utils/colors.dart';

class HeaderBody extends StatelessWidget {
  const HeaderBody({
    super.key,
    this.isMobile = false,
  });

  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'Hi, i am',
          style: GoogleFonts.montserrat(
            fontSize: 20,
          ).copyWith(color: AppColors.kPromaryColor, fontWeight: FontWeight.bold),
          maxLines: 1,
        ),
        AutoSizeText(
          'Mostafa Hamed',
          style: GoogleFonts.montserrat(fontSize: 50),
          textAlign: TextAlign.left,
          maxLines: 1,
        ),
        AutoSizeText(
          'Mobile Application Developer',
          style: GoogleFonts.montserrat(fontSize: 30),
          textAlign: TextAlign.left,
          maxLines: 1,
        ),
        const SizedBox(height: 25),
        const AutoSizeText(
          'i have 2 years of experience in mobile application development\nand building beautifull apps in android and iOS.',
          style: TextStyle(fontSize: 18),
          maxLines: 3,
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.kPromaryColor,
                padding: EdgeInsets.symmetric(vertical: isMobile ? 10 : 17, horizontal: isMobile ? 8 : 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Download CV',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 30),
            TextButton(
              onPressed: () {
                // Button pressed action
              },
              style: ButtonStyle(
                padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(vertical: isMobile ? 10 : 17, horizontal: isMobile ? 8 : 15),
                ),
                side: MaterialStateProperty.all(const BorderSide(color: AppColors.kPromaryColor)), // Border color
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))), // Border radius

                backgroundColor: MaterialStateProperty.all(Colors.transparent), // Transparent button
              ),
              child: const Text(
                'Contact Me',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
