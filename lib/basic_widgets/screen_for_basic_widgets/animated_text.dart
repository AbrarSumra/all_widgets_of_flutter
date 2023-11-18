import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedTextScreen extends StatelessWidget {
  AnimatedTextScreen({super.key});

  final List<Color> colorizedText = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.white,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Text"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Container(
              height: 50.h.h,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                "Rotate Text",
                style: TextStyle(
                  fontSize: 25.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100.h.h,
              margin: const EdgeInsets.all(10),
              color: Colors.red.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BE",
                    style: TextStyle(
                      fontSize: 40.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(width: 20.w),
                  SizedBox(
                    width: 185.w,
                    child: Row(
                      children: [
                        AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            RotateAnimatedText(
                              "Happy",
                              textStyle: GoogleFonts.adamina(
                                fontSize: 40.sp,
                                color: Colors.blue,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            RotateAnimatedText(
                              "Awesome",
                              textStyle: GoogleFonts.adamina(
                                fontSize: 40.sp,
                                color: Colors.blue,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            RotateAnimatedText(
                              "Careful",
                              textStyle: GoogleFonts.adamina(
                                fontSize: 40.sp,
                                color: Colors.blue,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            RotateAnimatedText(
                              "Ready",
                              textStyle: GoogleFonts.adamina(
                                fontSize: 40.sp,
                                color: Colors.blue,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              height: 50.h,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                "Fade Text",
                style: TextStyle(
                  fontSize: 25.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              width: double.infinity.w,
              height: 100.h,
              margin: const EdgeInsets.all(10),
              color: Colors.red.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      FadeAnimatedText(
                        "Hello",
                        textStyle: GoogleFonts.b612(
                          fontSize: 50.sp,
                          color: Colors.purple,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      FadeAnimatedText(
                        "World!",
                        textStyle: GoogleFonts.b612(
                          fontSize: 50.sp,
                          color: Colors.purple,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              height: 50.h,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                "Typer Text",
                style: TextStyle(
                  fontSize: 25.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              width: double.infinity.w,
              height: 100.h,
              margin: const EdgeInsets.all(10),
              color: Colors.red.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TyperAnimatedText(
                        "Hello Everyone",
                        speed: const Duration(milliseconds: 100),
                        textStyle: GoogleFonts.cabinSketch(
                          fontSize: 35.sp,
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TyperAnimatedText(
                        "Welcome to the Flutter",
                        speed: const Duration(milliseconds: 100),
                        textStyle: GoogleFonts.cabinSketch(
                          fontSize: 30.sp,
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50.h,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text(
                "TypeWriter Text",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100.h,
              margin: const EdgeInsets.all(10),
              color: Colors.red.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "My name is Abrar Khira",
                        speed: const Duration(milliseconds: 250),
                        textStyle: GoogleFonts.damion(
                          fontSize: 30.sp,
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TypewriterAnimatedText(
                        "I am from Gujarat",
                        speed: const Duration(milliseconds: 250),
                        textStyle: GoogleFonts.damion(
                          fontSize: 35,
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50.h,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text(
                "Scale Text",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100.h,
              margin: const EdgeInsets.all(10),
              color: Colors.red.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      ScaleAnimatedText(
                        "What",
                        duration: const Duration(seconds: 2),
                        textStyle: GoogleFonts.eagleLake(
                          fontSize: 50,
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      ScaleAnimatedText(
                        "are",
                        duration: const Duration(seconds: 2),
                        textStyle: GoogleFonts.eagleLake(
                          fontSize: 50,
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      ScaleAnimatedText(
                        "doing ?",
                        duration: const Duration(seconds: 2),
                        textStyle: GoogleFonts.eagleLake(
                          fontSize: 50,
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50.h,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                "Colorize Text",
                style: TextStyle(
                  fontSize: 25.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100.h,
              margin: const EdgeInsets.all(10),
              color: Colors.red.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    repeatForever: true,
                    isRepeatingAnimation: true,
                    animatedTexts: [
                      ColorizeAnimatedText(
                        "What are you doing ?",
                        speed: const Duration(seconds: 1),
                        textStyle: GoogleFonts.aldrich(
                          fontSize: 30.sp,
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                        ),
                        colors: colorizedText,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50.h,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                "Wavy Text",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100.h,
              margin: const EdgeInsets.all(10),
              color: Colors.red.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    repeatForever: true,
                    isRepeatingAnimation: true,
                    animatedTexts: [
                      WavyAnimatedText(
                        "What are you doing ?",
                        textStyle: GoogleFonts.habibi(
                          fontSize: 30.sp,
                          color: Colors.blue,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50.h,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text(
                "Liquid Text",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextLiquidFill(
                  boxWidth: 300,
                  boxHeight: 130,
                  text: "LIQUID",
                  loadUntil: 0.5,
                  textStyle: GoogleFonts.habibi(
                    fontSize: 60.sp,
                    color: Colors.blue,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 50.h,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text(
                "Flicker Text",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100.h,
              margin: const EdgeInsets.all(10),
              color: Colors.red.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    repeatForever: true,
                    isRepeatingAnimation: true,
                    animatedTexts: [
                      FlickerAnimatedText(
                        "AWESOME",
                        textStyle: GoogleFonts.habibi(
                          fontSize: 60.sp,
                          shadows: [
                            const Shadow(
                              blurRadius: 20,
                              color: Colors.red,
                            ),
                          ],
                          color: Colors.yellow,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      FlickerAnimatedText(
                        "HAPPY",
                        textStyle: GoogleFonts.habibi(
                          fontSize: 60.sp,
                          shadows: [
                            const Shadow(
                              blurRadius: 20,
                              color: Colors.red,
                            ),
                          ],
                          color: Colors.yellow,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
