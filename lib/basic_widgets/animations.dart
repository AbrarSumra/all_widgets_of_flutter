import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  bool selected1 = false;
  bool selected2 = false;
  bool isOpacity = false;
  bool isCrossFade = false;
  int isAlignment = 0;
  double mWidth = 100;
  double mHeight = 100;
  Color mColor = Colors.blue;
  double mBorderRadius = 12;
  bool isClose = false;
  double animatedPadding = 0;
  bool selectedPosition = false;
  double isRotate = 0;
  double isScale = 1;
  double isSize = 50;
  bool isLarge = false;
  Offset offset = Offset.zero;
  int _count = 0;

  Alignment randomAlignment = Alignment.center;

  var arrAlignment = [
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

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )
      ..forward()
      ..repeat(reverse: true);

    animation = Tween(begin: 0.0, end: 1.0).animate(animationController);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
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
            const SizedBox(height: 30),
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
                mHeight = Random().nextInt(300).toDouble();
                mWidth = Random().nextInt(300).toDouble();
                mBorderRadius = Random().nextInt(30).toDouble();
                mColor =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];

                setState(() {
                  //
                });
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                height: mHeight,
                width: mWidth,
                decoration: BoxDecoration(
                  color: mColor,
                  borderRadius: BorderRadius.circular(mBorderRadius),
                ),
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
            const SizedBox(height: 30),
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
            const SizedBox(height: 30),
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
            const SizedBox(height: 30),
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
                final random = Random().nextInt(arrAlignment.length);
                randomAlignment = arrAlignment[random];

                setState(() {});
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                color: Colors.blue.shade200,
                height: 250,
                width: 400,
                child: AnimatedAlign(
                  duration: const Duration(seconds: 1),
                  alignment: randomAlignment,
                  child: const Text(
                    "Don't Touch me! 🤭",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              "Animated Icon",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.w900,
              ),
            ),
            AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              size: 50,
              color: Colors.blue,
              progress: animation,
            ),
            const Text(
              "Animated Padding",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.w900,
              ),
            ),
            InkWell(
              onTap: () {
                final animatedPad = Random().nextInt(50).toDouble();
                animatedPadding = animatedPad;

                setState(() {});
              },
              child: Column(
                children: [
                  AnimatedPadding(
                    padding: EdgeInsets.all(animatedPadding),
                    duration: const Duration(seconds: 2),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      width: 200,
                    ),
                  ),
                  Text(
                    "Padding: $animatedPadding",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Animated Positioned",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.w900,
              ),
            ),
            Container(
              color: Colors.blue,
              width: 300,
              height: 200,
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(seconds: 2),
                    height: selectedPosition ? 200 : 80,
                    width: selectedPosition ? 80 : 200,
                    top: selectedPosition ? 10 : 150,
                    curve: Curves.fastOutSlowIn,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedPosition = !selectedPosition;
                        });
                      },
                      child: const ColoredBox(
                        color: Colors.orange,
                        child: Center(
                          child: Text(
                            "Tap me!",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Animated Rotate",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.w900,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isRotate += 1 / 8;
                });
              },
              child: Container(
                height: 160,
                width: 300,
                color: Colors.orange,
                child: Center(
                  child: AnimatedRotation(
                    duration: const Duration(seconds: 2),
                    turns: isRotate,
                    child: const Text(
                      "Tap to Rotate",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Animated Scale",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.w900,
              ),
            ),
            Container(
              height: 100,
              width: 300,
              color: Colors.blue,
              child: InkWell(
                onTap: () {
                  setState(() {
                    isScale = isScale == 1 ? 3 : 1;
                  });
                },
                child: AnimatedScale(
                  scale: isScale,
                  duration: const Duration(seconds: 2),
                  child: const FlutterLogo(),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Animated Size",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.w900,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isSize = isLarge ? 200 : 50;
                  isLarge = !isLarge;
                });
              },
              child: ColoredBox(
                color: Colors.orange,
                child: AnimatedSize(
                  duration: const Duration(seconds: 2),
                  child: FlutterLogo(
                    size: isSize,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Animated Slider",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              width: 350,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(50.0),
                              child: AnimatedSlide(
                                offset: offset,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                                child: const FlutterLogo(size: 50.0),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text('Y', style: textTheme.bodyMedium),
                              Expanded(
                                child: RotatedBox(
                                  quarterTurns: 1,
                                  child: Slider(
                                    min: -5.0,
                                    max: 5.0,
                                    value: offset.dy,
                                    onChanged: (double value) {
                                      setState(() {
                                        offset = Offset(offset.dx, value);
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('X', style: textTheme.bodyMedium),
                        Expanded(
                          child: Slider(
                            min: -5.0,
                            max: 5.0,
                            value: offset.dx,
                            onChanged: (double value) {
                              setState(() {
                                offset = Offset(value, offset.dy);
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 48.0),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Animated Switcher",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.w900,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _count--;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(),
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(50, 30),
                  ),
                  child: const Text(
                    "-",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(width: 50),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return ScaleTransition(scale: animation, child: child);
                  },
                  child: Text(
                    '$_count',
                    key: ValueKey<int>(_count),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                const SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _count++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(),
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(50, 30),
                  ),
                  child: const Text(
                    "+",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
