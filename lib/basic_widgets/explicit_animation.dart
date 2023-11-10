import 'package:flutter/material.dart';

class ExplicitAnimationScreen extends StatefulWidget {
  const ExplicitAnimationScreen({super.key});

  @override
  State<ExplicitAnimationScreen> createState() =>
      _ExplicitAnimationScreenState();
}

class _ExplicitAnimationScreenState extends State<ExplicitAnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animationDouble;
  late Animation<Color?> animationColor;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..addListener(() {
            setState(() {});
          })
          ..repeat(reverse: true);

    animationDouble = Tween<double>(begin: 100, end: 200)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));
    animationColor = ColorTween(begin: Colors.blue, end: Colors.red).animate(
        CurvedAnimation(parent: controller, curve: Curves.bounceInOut));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explicit Animation"),
      ),
      body: Center(
        child: Column(
          children: [
            /// height-width 0 ho jayega fir 200 jayega
            /*Container(
              height: controller.value * 200,
              width: controller.value * 200,
              color: animationColor.value,
            ),*/
            const SizedBox(height: 100),

            /// height-width 0 nhi hoga 100 tak size small hogi then 200 tak big hogi
            Container(
              height: animationDouble.value,
              width: animationDouble.value,
              color: animationColor.value,
            ),
          ],
        ),
      ),
    );
  }
}
