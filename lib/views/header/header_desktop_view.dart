import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/views/header/widgets/header_body.dart';

class HeaderDesktopView extends StatelessWidget {
  const HeaderDesktopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 864,
      width: 1507,
      color: Colors.white,
      child: const Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: HeaderBody(),
          ),
          SizedBox(width: 50),
          FlutterLogo(size: 300)
        ],
      ),
    );
  }
}
