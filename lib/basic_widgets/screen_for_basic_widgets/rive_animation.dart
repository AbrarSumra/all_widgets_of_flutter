import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class RiveAnimation extends StatefulWidget {
  const RiveAnimation({super.key});

  @override
  State<RiveAnimation> createState() => _RiveAnimationState();
}

class _RiveAnimationState extends State<RiveAnimation> {
  StateMachineController? controller;
  Artboard? mainArtBoard;
  SMIInput<bool>? success;
  SMIInput<bool>? fail;
  SMIInput<bool>? check;
  SMIInput<bool>? handsUp;
  bool eyeOpen = false;

  @override
  void initState() {
    super.initState();

    rootBundle.load("assets/rive/login.riv").then((riveByteData) {
      var riveFile = RiveFile.import(riveByteData);
      var artboard = riveFile.mainArtboard;
      controller =
          StateMachineController.fromArtboard(artboard, "State Machine 1");

      if (controller != null) {
        artboard.addController(controller!);
        mainArtBoard = artboard;
        success = controller!.findInput("success");
        fail = controller!.findInput("fail");
        check = controller!.findInput("Check");
        handsUp = controller!.findInput("hands_up");

        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rive Animation"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            mainArtBoard != null
                ? SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Rive(
                      artboard: mainArtBoard!,
                      fit: BoxFit.cover,
                    ),
                  )
                : const Text("Loading..."),
            const SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                onTap: () {
                  check!.value = !check!.value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 11),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                onTap: () {
                  handsUp!.value = !handsUp!.value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    success!.value = !success!.value;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    fail!.value = !fail!.value;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
