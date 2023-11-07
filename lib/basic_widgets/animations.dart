import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool selected1 = false;
  bool selected2 = false;
  bool isOpacity = false;
  bool isCrossFade = false;
  int isAlignment = 0;
  int mWidth = 100;
  int mHeight = 100;

  List<Alignment> arrAlignment = [
    Alignment.topLeft,
    Alignment.topCenter,
    Alignment.topRight,
    Alignment.centerLeft,
    Alignment.center,
    Alignment.centerRight,
    Alignment.bottomLeft,
    Alignment.bottomCenter,
    Alignment.bottomRight,
  ];

  Alignment randomAlignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Text(
              "Animated Container",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.w900,
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    selected1 = !selected1;
                  });
                },
                child: AnimatedContainer(
                  height: selected1 ? 200.0 : 300.0,
                  width: selected1 ? 300.0 : 200.0,
                  alignment: selected1
                      ? Alignment.center
                      : AlignmentDirectional.topCenter,
                  curve: Curves.easeInOutQuart,
                  duration: const Duration(seconds: 2),
                  child: Center(
                    child: selected1
                        ? const Image(
                            image: AssetImage("assets/images/Abrar_bike.jpg"),
                            height: 200,
                            width: 500,
                          )
                        : const Image(
                            image: AssetImage("assets/images/Abrar_Stand.jpg"),
                            fit: BoxFit.fitHeight,
                            height: 300,
                            width: 400,
                          ),
                  ),
                ),
              ),
            ),
            const Text(
              "Animated Container",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.w900,
              ),
            ),
            InkWell(
              onTap: () {
                int randomHeight = Random().nextInt(300);
                int randomWidth = Random().nextInt(300);
                setState(() {
                  mWidth = randomWidth;
                  mHeight = randomHeight;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                height: mHeight.toDouble(),
                width: mWidth.toDouble(),
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Animated Opacity",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.w900,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isOpacity = !isOpacity;
                });
              },
              child: AnimatedOpacity(
                opacity: isOpacity ? 0.2 : 1,
                duration: const Duration(seconds: 2),
                child: Container(
                  height: 200,
                  width: 300,
                  color: isOpacity ? Colors.blue : Colors.red,
                ),
              ),
            ),
            const Text(
              "Animated CrossFade",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.w900,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isCrossFade = !isCrossFade;
                });
              },
              child: AnimatedCrossFade(
                firstChild: const Image(
                  image: AssetImage("assets/images/Abrar_Stand.jpg"),
                  height: 300,
                  width: 500,
                ),
                secondChild: const Image(
                  image: AssetImage("assets/images/Abrar_sit.JPG"),
                  height: 300,
                  width: 500,
                ),
                crossFadeState: isCrossFade
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(seconds: 2),
              ),
            ),
            const Text(
              "Animated Align",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.w900,
              ),
            ),
            InkWell(
              onTap: () {
                final random = Random().nextInt(arrAlignment.length - 1);
                randomAlignment = arrAlignment[random];

                setState(() {});
              },
              child: AnimatedAlign(
                duration: const Duration(seconds: 2),
                alignment: randomAlignment,
                child: const SizedBox(
                  height: 300,
                  width: 300,
                  child: Text(
                    "Hello World!",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
