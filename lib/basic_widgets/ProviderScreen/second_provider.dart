import 'package:all_in_one_widgets/basic_widgets/ProviderScreen/counter_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondProviderScreen extends StatelessWidget {
  SecondProviderScreen({super.key});

  final TextEditingController counterValueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: TextFormField(
                  //keyboardType: TextInputType.number,
                  controller: counterValueController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 11),
          FloatingActionButton(
            onPressed: () {
              /* Provider.of<CountProvider>(context, listen: false)
                      .incrementCounter();*/
              context.read<CountProvider>().counterValue =
                  int.parse(counterValueController.text.toString());
            },
            child: const Icon(CupertinoIcons.add),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              /* Provider.of<CountProvider>(context, listen: false)
                      .incrementCounter();*/
              context.read<CountProvider>().incrementCounter();
            },
            child: const Icon(CupertinoIcons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              /*Provider.of<CountProvider>(context, listen: false)
                      .decrementCounter();*/
              context.read<CountProvider>().decrementCounter();
            },
            child: const Icon(CupertinoIcons.minus),
          ),
        ],
      ),
    );
  }
}
