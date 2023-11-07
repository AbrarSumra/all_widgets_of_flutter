import 'package:flutter/material.dart';

class GridViewPattern extends StatefulWidget {
  const GridViewPattern({super.key});

  @override
  State<GridViewPattern> createState() => _GridViewPatternState();
}

class _GridViewPatternState extends State<GridViewPattern> {
  int itemCount = 20;

  int crossAxisCount = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Column(
                children: [
                  const Text(
                    "Container Count",
                    style: TextStyle(fontSize: 21),
                  ),
                  Slider(
                    label: "Count",
                    divisions: 100,
                    activeColor: Colors.blue,
                    inactiveColor: Colors.red,
                    thumbColor: Colors.purple,
                    value: itemCount.toDouble(),
                    min: 0,
                    max: 100,
                    onChanged: (newValue) {
                      setState(() {
                        itemCount = newValue.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text(
                    "Container Index",
                    style: TextStyle(fontSize: 21),
                  ),
                  Slider(
                    label: "Index",
                    divisions: 20,
                    activeColor: Colors.blue,
                    inactiveColor: Colors.red,
                    thumbColor: Colors.purple,
                    value: crossAxisCount.toDouble(),
                    min: 1,
                    max: 20,
                    onChanged: (newGridValue) {
                      setState(() {
                        crossAxisCount = newGridValue.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: itemCount,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                ),
                itemBuilder: (BuildContext context, int index) {
                  List<Color> colorList = [
                    Colors.blue,
                    Colors.yellow,
                    Colors.red,
                    Colors.green,
                    Colors.purple,
                    Colors.grey,
                    Colors.orange
                  ];

                  return Container(
                    margin: const EdgeInsets.all(5),
                    color: colorList[index % colorList.length],
                    child: Center(
                      child: Text("Item: $index"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
