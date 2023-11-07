import 'package:flutter/material.dart';

class RadioCheckBox extends StatefulWidget {
  const RadioCheckBox({super.key});

  @override
  State<RadioCheckBox> createState() => _RadioCheckBoxState();
}

class _RadioCheckBoxState extends State<RadioCheckBox> {
  bool isChecked = false;
  String? selectedRadio = "Male";
  bool isLightMode = false;

  var listRadioOpt = [
    "Male",
    "Female",
    "Others",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio-CheckBox"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Checkbox(
              activeColor: Colors.red,
              checkColor: Colors.blue,
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = !isChecked;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Adaptive use for Android and Ios Device Change Radio Button Theme
                const Text("Adaptive CheckBox"),
                Checkbox.adaptive(
                  activeColor: Colors.red,
                  checkColor: Colors.blue,
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                ),
              ],
            ),
            CheckboxListTile(
              activeColor: Colors.red,
              checkColor: Colors.blue,
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text("Remember me!"),
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = !isChecked;
                });
              },
            ),
            CheckboxListTile(
              activeColor: Colors.red,
              checkColor: Colors.blue,
              controlAffinity: ListTileControlAffinity.leading,
              tileColor: Colors.blue.shade200,
              title: const Text("Remember me!"),
              subtitle: const Text("Subtitle"),
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = !isChecked;
                });
              },
            ),
            Radio(
              value: listRadioOpt[0],
              groupValue: selectedRadio,
              onChanged: (value) {
                setState(() {
                  selectedRadio = value!;
                });
              },
            ),
            Radio(
              value: listRadioOpt[1],
              groupValue: selectedRadio,
              onChanged: (value) {
                setState(() {
                  selectedRadio = value!;
                });
              },
            ),
            Radio(
              value: listRadioOpt[2],
              groupValue: selectedRadio,
              onChanged: (value) {
                setState(() {
                  selectedRadio = value!;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Adaptive use for Android and Ios Device Change Radio Button Theme
                const Text("Adaptive Radio button"),
                Radio(
                  value: listRadioOpt[2],
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value!;
                    });
                  },
                ),
              ],
            ),
            RadioListTile(
              title: Text(listRadioOpt[0]),
              value: listRadioOpt[0],
              groupValue: selectedRadio,
              onChanged: (value) {
                setState(() {
                  selectedRadio = value!;
                });
              },
            ),
            RadioListTile(
              title: Text(listRadioOpt[1]),
              value: listRadioOpt[1],
              groupValue: selectedRadio,
              onChanged: (value) {
                setState(() {
                  selectedRadio = value!;
                });
              },
            ),
            RadioListTile(
              title: Text(listRadioOpt[2]),
              value: listRadioOpt[2],
              groupValue: selectedRadio,
              onChanged: (value) {
                setState(() {
                  selectedRadio = value!;
                });
              },
            ),
            Switch(
              value: isLightMode,
              onChanged: (value) {
                isLightMode = value;
                setState(() {});
              },
            ),
            SwitchListTile(
              title: isLightMode
                  ? const Text("Light Mode")
                  : const Text("Night Mode"),
              controlAffinity: ListTileControlAffinity.leading,
              inactiveThumbColor: Colors.black,
              activeColor: Colors.purple,
              thumbIcon: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.selected)) {
                  return const Icon(Icons.sunny);
                } else {
                  return const Icon(Icons.nightlight);
                }
              }),
              value: isLightMode,
              onChanged: (value) {
                isLightMode = value;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
