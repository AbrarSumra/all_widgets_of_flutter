import 'dart:math';

import 'package:flutter/material.dart';

class AnimationBuilder extends StatefulWidget {
  const AnimationBuilder({super.key});

  @override
  State<AnimationBuilder> createState() => _AnimationBuilderState();
}

class _AnimationBuilderState extends State<AnimationBuilder>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late AnimationController rotateController;
  late AnimationController carController;
  late Animation<double> alignmentController;
  late Animation<double> roadController;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..addListener(() {
            setState(() {});
          })
          ..repeat(
            reverse: true,
          );

    rotateController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..addListener(() {
            setState(() {});
          })
          ..repeat();

    carController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500))
      ..addListener(() {
        setState(() {});
      })
      ..repeat(reverse: true);

    alignmentController = Tween<double>(begin: -100, end: 200)
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));

    roadController = Tween<double>(begin: -300, end: 300)
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Builder"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 21),
                  const Text(
                    "Animation Scale",
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                  const SizedBox(height: 11),
                  AnimatedBuilder(
                    animation: controller,
                    builder: (_, mChild) {
                      return Transform.scale(
                        scale: controller.value * 1,
                        child: mChild,
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 21),
                  const Text(
                    "Animation Translate",
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                  const SizedBox(height: 11),
                  AnimatedBuilder(
                    animation: alignmentController,
                    builder: (_, mChild) {
                      return Transform.translate(
                        offset: Offset(alignmentController.value, 0),
                        child: mChild,
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(height: 21),
                  const Text(
                    "Animation Rotate",
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                  const SizedBox(height: 21),
                  AnimatedBuilder(
                    animation: rotateController,
                    builder: (_, mChild) {
                      return Transform.rotate(
                        angle: rotateController.value * pi,
                        child: mChild,
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.yellow,
                    ),
                  ),
                  const SizedBox(height: 21),
                ],
              ),
            ),
            const SizedBox(height: 21),
            SizedBox(
              height: 150,
              child: Stack(
                children: [
                  Positioned(
                    top: 80,
                    child: Container(
                      height: 80,
                      width: 420,
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    top: 110,
                    child: Container(
                      height: 15,
                      width: 420,
                      color: Colors.white,
                    ),
                  ),
                  AnimatedBuilder(
                    animation: carController,
                    builder: (_, mChild) {
                      return Transform.translate(
                        offset: Offset(0, carController.value * -5),
                        child: mChild,
                      );
                    },
                    child: Image.asset("assets/png/lamborghini-car.png"),
                  ),
                  Positioned(
                    top: 55,
                    left: 36,
                    child: Row(
                      children: [
                        AnimatedBuilder(
                          animation: rotateController,
                          builder: (_, mChild) {
                            return Transform.rotate(
                              angle: rotateController.value * 2 * pi,
                              child: mChild,
                            );
                          },
                          child: Image.asset(
                            "assets/png/tire-png.png",
                            height: 60,
                            width: 60,
                          ),
                        ),
                        const SizedBox(width: 190),
                        AnimatedBuilder(
                          animation: rotateController,
                          builder: (_, mChild) {
                            return Transform.rotate(
                              angle: rotateController.value * 2 * pi,
                              child: mChild,
                            );
                          },
                          child: Image.asset(
                            "assets/png/tire-png.png",
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 110,
                    child: Container(
                      height: 10,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
