import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 864,
      width: 1507,
      color: Colors.white,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('i\'m a Mobile Application', style: GoogleFonts.montserrat(fontSize: 50)),
                Text('Developer < / >', style: GoogleFonts.montserrat(fontSize: 50)),
                const SizedBox(height: 25),
                const Text(
                    'i have 2 years of experience in mobile application development\nand building beautifull apps in android and iOS.',
                    style: TextStyle(fontSize: 18)),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                  child: const Text('Contact Me', style: TextStyle(color: Colors.white)),
                )
              ],
            ),
          ),
          const SizedBox(width: 50),
          const FlutterLogo(size: 300)
        ],
      ),
    );
  }
}
