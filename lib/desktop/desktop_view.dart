import 'package:flutter/material.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 864,
              width: 1507,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('i\'m a Mobile Application', style: TextStyle(fontSize: 35)),
                      const Text('Developer < / >',
                          style: TextStyle(fontSize: 35, color: Colors.blue)),
                      const Text(
                        'i have 2 years of experience in mobile application development\nand building beautifull apps in android and iOS.',
                        style: TextStyle(fontSize: 18),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                        child: const Text('Contact Me', style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                  const SizedBox(width: 50),
                  const FlutterLogo(size: 300)
                ],
              ),
            ),
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
