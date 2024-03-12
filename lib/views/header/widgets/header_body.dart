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
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.kPromaryColor,
              padding: EdgeInsets.symmetric(vertical: isMobile ? 10 : 17, horizontal: isMobile ? 8 : 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: const Text(
              'Contact Me',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
