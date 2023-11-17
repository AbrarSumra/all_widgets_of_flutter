import 'package:all_in_one_widgets/basic_widgets/lottie_animation.dart';
import 'package:all_in_one_widgets/basic_widgets/screen_for_basic_widgets/animation_builder.dart';
import 'package:flutter/material.dart';

import '../modules/list__tile_edited.dart';
import 'explicit_animation.dart';
import 'hero_animation.dart';
import 'page_transitions.dart';
import 'screen_for_basic_widgets/animated_text.dart';

class AllAnimations extends StatelessWidget {
  const AllAnimations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Animations"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EditListTile(
              color: Colors.blue,
              indexNo: 1,
              titleName: "Hero Animation",
              subTitleName: "Complete",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const HeroAnimationScreen()));
              },
            ),
            EditListTile(
              color: Colors.blue,
              indexNo: 2,
              titleName: "Animated Text",
              subTitleName: "Completed",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => AnimatedTextScreen()));
              },
            ),
            EditListTile(
              color: Colors.blue,
              indexNo: 3,
              titleName: "Explicit Animation",
              subTitleName: "Complete",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const ExplicitAnimationScreen()));
              },
            ),
            EditListTile(
              color: Colors.blue,
              indexNo: 4,
              titleName: "Page Transition",
              subTitleName: "Complete",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const PageTransitionsScreen()));
              },
            ),
            EditListTile(
              color: Colors.blue,
              indexNo: 5,
              titleName: "Animation Builder",
              subTitleName: "Complete",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const AnimationBuilder()));
              },
            ),
            EditListTile(
              color: Colors.blue,
              indexNo: 6,
              titleName: "Lottie Animation",
              subTitleName: "Complete",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const LottieAnimation()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
