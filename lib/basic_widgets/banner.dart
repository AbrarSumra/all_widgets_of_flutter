import 'package:flutter/material.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({
    super.key,
  });

  @override
  State<BannerPage> createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {
  bool isDarkTheme = false;

  void toggleTheme(bool newValue) {
    setState(() {
      isDarkTheme = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDarkTheme ? Colors.yellow : Colors.blue,
        title: const Text(
          "Banner Widget",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Switch(
            activeColor: Colors.red,
            value: isDarkTheme,
            onChanged: (newValue) {
              toggleTheme(newValue);
            },
          ),
        ],
      ),
      backgroundColor:
          isDarkTheme ? Colors.yellow.shade100 : Colors.blue.shade100,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  child: Banner(
                    message: "Confirmed",
                    textStyle: const TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    location: BannerLocation.topStart,
                    color: Colors.yellow,
                    child: Container(
                      height: 100,
                      width: 300,
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  child: Banner(
                    message: "Submitted",
                    textStyle: const TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    location: BannerLocation.topEnd,
                    color: Colors.yellow,
                    child: Container(
                      height: 100,
                      width: 300,
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  child: Banner(
                    message: "Clear",
                    textStyle: const TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    location: BannerLocation.bottomStart,
                    color: Colors.yellow,
                    child: Container(
                      height: 100,
                      width: 300,
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  child: Banner(
                    message: "Stop",
                    textStyle: const TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    location: BannerLocation.bottomEnd,
                    color: Colors.yellow,
                    child: Container(
                      height: 100,
                      width: 300,
                      color: Colors.red,
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
