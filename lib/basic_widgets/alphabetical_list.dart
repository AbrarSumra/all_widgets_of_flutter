import 'package:flutter/material.dart';

class AlphabeticalList extends StatefulWidget {
  const AlphabeticalList({super.key});

  @override
  State<AlphabeticalList> createState() => _AlphabeticalListState();
}

class _AlphabeticalListState extends State<AlphabeticalList> {
  bool isSorted = false;

  void sortList() {
    setState(() {
      isSorted = !isSorted;
      if (isSorted) {
        items.sort();
      } else {
        items.sort((a, b) => b.compareTo(a));
      }
    });
  }

  List<String> items = [
    "Nilesh",
    "Payal",
    "Abrar",
    "Jagulii",
    "Khushi",
    "Maya",
    "Hiral",
    "Aasha",
    "Chandrika",
    "Mansi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: sortList,
            icon: const Icon(
              Icons.sort_by_alpha,
              color: Colors.red,
              size: 28,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              const SizedBox(height: 10),
              Container(
                color: Colors.yellow.shade200,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.purple.shade400,
                  ),
                  trailing: const Icon(
                    Icons.star,
                    size: 18,
                    color: Colors.blue,
                  ),
                  title: Text(
                    items[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
