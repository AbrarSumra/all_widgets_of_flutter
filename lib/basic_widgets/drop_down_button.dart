import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String selectedItem = "Item 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drop Down Button"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue.shade200,
      body: Center(
        child: SizedBox(
          //color: const Color.fromRGBO(90, 49, 231, 1),
          width: 80,
          height: 35,
          child: DropdownButton(
            value: selectedItem,
            onChanged: (newItem) {
              setState(() {
                selectedItem = newItem.toString();
              });
            },
            items: <String>["Item 1", "Item 2", "Item 3", "Item 4"]
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
