import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_portfolio/components/desktop_view_builder.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/views/skills/widgets/outelined_skills_container.dart';

class SkillsDesktopView extends StatelessWidget {
  const SkillsDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DesktopViewBuilder(
      isGraidentBackground: true,
      mainText: 'Why Choose Me',
      subText: 'My Expertise Area',
      children: [
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SkillsCustomColumn(
                children: [
                  Text('◦ Very quick learner'),
                  Text('◦ Self motivated, hardworking'),
                  Text('◦ Good communication skills'),
                  Text('◦ Presentation and speaker'),
                ],
              ),
            ),
            Expanded(
              child: SkillsCustomColumn(
                children: [
                  Text('◦ Mobile Application Development'),
                  Text('◦ Dart - Flutter - Responsive Design'),
                  Text('◦ OOP, SOLID Principles'),
                  Text('◦ State Management ( Riverpod, Provider,  Bloc , GetX )'),
                  Text("◦ Integrating with restful Api’s ( Dio, Http, APIs, JSON )"),
                  Text("◦ Dealing with local storage ( Hive, Shared Preferences )"),
                  Text("◦ Integrating with Firebase services"),
                  Text("◦ Firestore, Authentication, Realtime Database"),
                  Text("◦ Architecture patterns"),
                  Text("◦ MVVM, Clean Architecture, DDD, Layered Architecture"),
                  Text("◦ Basic Knowledge about Design Patterns"),
                  Text("◦ Socket IO, Realtime"),
                  Text("◦ Google Maps, Firebase"),
                  Text("◦ Payment Gateway"),
                  Text("◦ Testing and Debugging"),
                  Text("◦ Git, Github"),
                  Text("◦ Agile Development"),
                  Text("◦ Basic Knowledge about Native iOS"),
                  Text("◦ Swift, Xcode"),
                ],
              ),
            ),
          ],
        ),
        // Old skills view
        // const SizedBox(height: 30),
        // Column(
        //   children: [
        //     for (var rowIndex = 0; rowIndex < kSkillsNames.length / 4; rowIndex++)
        //       Row(
        //         children: [
        //           for (var index = 0; index < kSkillsNames.length / 2; index++)
        //             Expanded(
        //               child: Padding(
        //                 padding: EdgeInsets.only(left: index == 0 ? 0 : 9, bottom: 20),
        //                 child: OutelinedSkillsContainer(index: index, rowIndex: rowIndex),
        //               ),
        //             )
        //         ],
        //       ),
        //   ],
        // )
      ],
    );
  }
}

class SkillsCustomColumn extends StatelessWidget {
  const SkillsCustomColumn({
    super.key,
    required this.children,
  });
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text.rich(
            TextSpan(
              children: [
                const WidgetSpan(child: Icon(Icons.co_present)),
                const WidgetSpan(child: SizedBox(width: 10)),
                TextSpan(
                  text: 'Personal Skills'.toUpperCase(),
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        )
      ],
    );
  }
}
