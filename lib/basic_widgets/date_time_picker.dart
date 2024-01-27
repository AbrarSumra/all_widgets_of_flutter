import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  TextEditingController dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000, 2, 15),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null && selectedDate != DateTime.now()) {
      setState(() {
        dateController.text = selectedDate.toLocal().toString().split(" ")[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date - Time Picker"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text("Date Picker"),
              onPressed: () async {
                _selectDate(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                controller: dateController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              child: const Text("Time Picker"),
              onPressed: () async {
                var selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
              },
            ),
            ElevatedButton(
              child: const Text("Date Range Picker"),
              onPressed: () async {
                var selectedRangePicker = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                );

                if (selectedRangePicker != null) {
                  Text(
                      "Selected Date Range: ${selectedRangePicker.start.day}/${selectedRangePicker.start.month}/${selectedRangePicker.start.year} - ${selectedRangePicker.end.day}/${selectedRangePicker.end.month}/${selectedRangePicker.end.year}");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
