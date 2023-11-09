import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogBoxes extends StatefulWidget {
  const DialogBoxes({super.key});

  @override
  State<DialogBoxes> createState() => _DialogBoxesState();
}

class _DialogBoxesState extends State<DialogBoxes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Box"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text("Alert Dialog"),
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: true,
                    barrierColor: Colors.blue.withOpacity(0.2),
                    builder: (ctx) {
                      return AlertDialog(
                        title: const Text("Delete ?"),
                        backgroundColor: Colors.blue.shade200,
                        icon: const Icon(Icons.delete),
                        content: const Text("Are you sure want to delete?"),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: const Text("Yes"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("No"),
                          ),
                        ],
                      );
                    });
              },
            ),
            ElevatedButton(
              child: const Text("Simple Dialog"),
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    barrierColor: Colors.blue.withOpacity(0.2),
                    builder: (ctx) {
                      return SimpleDialog(
                        backgroundColor: Colors.blue,
                        title: const Text("Select a language"),
                        children: [
                          SimpleDialogOption(
                            child: const Text("English"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          SimpleDialogOption(
                            child: const Text("Hindi"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          SimpleDialogOption(
                            child: const Text("Gujarati"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    });
              },
            ),
            ElevatedButton(
              child: const Text("Abount Dialog"),
              onPressed: () {
                showDialog(
                    barrierDismissible: true,
                    context: context,
                    builder: (ctx) {
                      return const AboutDialog(
                        applicationVersion: "v 2.0",
                        applicationName: "All Widgets",
                        applicationLegalese: "This is Flutter Widgets App",
                        applicationIcon: Icon(CupertinoIcons.star),
                      );
                    });
              },
            ),
            ElevatedButton(
              child: const Text("Custom Dialog"),
              onPressed: () {
                showGeneralDialog(
                    context: context,
                    pageBuilder: (ctx, __, ___) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 300,
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      "Add Notes",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        child: const Text(
                                          "Add",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                      TextButton(
                                        child: const Text(
                                          "Cancel",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
