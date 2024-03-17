import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/utils/colors.dart';
import 'package:web_portfolio/utils/constants.dart';

class HeaderBody extends StatelessWidget {
  const HeaderBody({
    super.key,
    this.isMobile = false,
    this.isSmall = false,
  });

  final bool isMobile;
  final bool isSmall;
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
          ).copyWith(color: AppColors.kPromaryColor),
          maxLines: 1,
        ),
        AutoSizeText(
          'Mostafa Hamed',
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontSize: isMobile ? 30 : 50,
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.left,
          maxLines: 1,
        ),
        AutoSizeText(
          'Mobile Application Developer',
          style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: isMobile ? 20 : 30),
          textAlign: TextAlign.left,
          maxLines: 1,
        ),
        SizedBox(height: isMobile ? 5 : 15),
        AutoSizeText(
          "Are you seeking innovation? Allow me to anticipate your needs and construct your vision\nWith proficiency in Flutter, I specialize in developing high-performance applications. Let's collaborate to bring your next project to fruition.",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: isMobile ? 11 : 14, color: Colors.grey, fontFamily: kAvertaFont, fontWeight: FontWeight.w500),
          maxLines: 3,
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.kPromaryColor,
                padding: EdgeInsets.symmetric(vertical: isSmall ? 10 : 17, horizontal: isSmall ? 8 : 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Download CV',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: Colors.white, fontSize: isSmall ? 12 : null),
              ),
            ),
            const SizedBox(width: 30),
            TextButton(
              onPressed: () {
                // Button pressed action
              },
              style: ButtonStyle(
                padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(vertical: isSmall ? 10 : 17, horizontal: isSmall ? 8 : 15),
                ),
                side: MaterialStateProperty.all(const BorderSide(color: AppColors.kPromaryColor)), // Border color
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))), // Border radius

                backgroundColor: MaterialStateProperty.all(Colors.transparent), // Transparent button
              ),
              child: Text(
                'Contact Me',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: Colors.black, fontSize: isSmall ? 12 : null),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
