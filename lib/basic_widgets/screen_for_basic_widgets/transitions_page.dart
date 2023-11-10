import 'package:flutter/material.dart';

class TransitionPage extends StatelessWidget {
  const TransitionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TransitionPage"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.red.shade300,
      body: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Center(
          child: Text(
            "Hello World",
            style: TextStyle(
              fontSize: 50,
              color: Colors.orange,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
