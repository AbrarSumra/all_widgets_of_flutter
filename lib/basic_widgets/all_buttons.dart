import 'package:flutter/material.dart';

class AllButtons extends StatelessWidget {
  const AllButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Button-Types"),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue.shade100,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {},
                child: const Text("Click"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder(),
                ),
                onPressed: () {},
                child: const Text("Add"),
              ),
              TextButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {},
                child: const Text("Delete"),
              ),
              OutlinedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {},
                child: const Text("Submit"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(),
                ),
                onPressed: () {},
                child: const Text("Next"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
