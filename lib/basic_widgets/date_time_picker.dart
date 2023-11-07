import 'package:flutter/material.dart';

class DateTimePicker extends StatelessWidget {
  const DateTimePicker({super.key});

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
              child: const Text("Date Picker"),
              onPressed: () async {
                var selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000, 2, 15),
                  lastDate: DateTime.now(),
                );
              },
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
                  print(
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
