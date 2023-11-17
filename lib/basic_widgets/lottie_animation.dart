import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatelessWidget {
  const LottieAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie Animation"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Lottie.asset("assets/lottie/ball.json"),
      ),
    );
  }
}
