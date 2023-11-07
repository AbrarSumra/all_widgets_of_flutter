import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack Bar"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Show Snack Bar"),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.blue.shade200,
                margin: const EdgeInsets.all(10),
                behavior: SnackBarBehavior.floating,
                showCloseIcon: true,
                content: const Text(
                  "👑 Welcome to Flutter",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                action: SnackBarAction(
                  label: "Undo",
                  textColor: Colors.blue,
                  onPressed: () {},
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
