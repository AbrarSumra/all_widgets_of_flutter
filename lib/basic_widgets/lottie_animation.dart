import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({super.key});

  @override
  State<LottieAnimation> createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation> {
  bool isPlay = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie Animation"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Lottie.asset(
              "assets/lottie/ball.json",
              animate: isPlay,
              repeat: true,
            ),
            SizedBox(height: 20.h),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                setState(() {
                  isPlay = !isPlay;
                });
              },
              label: isPlay
                  ? const Text(
                      "Pause",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )
                  : const Text(
                      "Play",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
              icon: isPlay
                  ? const Icon(
                      Icons.stop,
                      color: Colors.white,
                      size: 30,
                    )
                  : const Icon(
                      Icons.play_arrow_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
