import 'package:flutter/material.dart';

class ClipRRectScreen extends StatelessWidget {
  const ClipRRectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clip-R-Rect"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 11),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "assets/images/images-2.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 11),
            ClipOval(
              child: Image.asset("assets/images/images-2.jpeg"),
            ),
            const SizedBox(height: 11),
            ClipRect(
              child: Image.asset("assets/images/images-2.jpeg"),
            )
          ],
        ),
      ),
    );
  }
}
