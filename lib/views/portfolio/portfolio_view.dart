import 'package:flutter/material.dart';
import 'package:web_portfolio/views/header/header_view.dart';
import 'package:web_portfolio/views/navigation_bar/navigation_bar_view.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavigationBarView(),
            const HeaderView(),
            Container(height: 864, width: 1507, color: Colors.blue),
            SizedBox(
              height: height,
              width: width,
            )
          ],
        ),
      ),
    );
  }
}
