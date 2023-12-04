import 'package:all_in_one_widgets/basic_widgets/ProviderScreen/counter_provider.dart';
import 'package:all_in_one_widgets/basic_widgets/ProviderScreen/second_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Consumer<CountProvider>(
              builder: (context, provider, child) {
                return Column(
                  children: [
                    const Text("You have tapped button:"),
                    Text(
                      // "${Provider.of<CountProvider>(context).getCount()}",
                      //"${context.watch<CountProvider>().getCount()}",
                      "${provider.getCount()}",
                      style: const TextStyle(fontSize: 35),
                    ),
                    const SizedBox(height: 21),
                    const Text("You have Enter the Value in TextField:"),
                    Text(
                      "${provider.counterValue}",
                      style: const TextStyle(fontSize: 35),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => SecondProviderScreen()));
        },
        child: const Icon(CupertinoIcons.forward),
      ),
    );
  }
}
