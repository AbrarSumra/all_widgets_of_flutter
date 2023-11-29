// ignore_for_file: use_build_context_synchronously

import 'package:all_in_one_widgets/basic_widgets/screen_for_basic_widgets/shared_preferences_data.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceScreen extends StatefulWidget {
  const SharedPreferenceScreen({super.key});

  @override
  State<SharedPreferenceScreen> createState() => _SharedPreferenceScreenState();
}

class _SharedPreferenceScreenState extends State<SharedPreferenceScreen> {
  TextEditingController controller = TextEditingController();
  String? nameFromPref;
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    nameFromPref = prefs.getString("name");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preference"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              nameFromPref != null ? "Welcome $nameFromPref" : "",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: 350,
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  label: const Text("Enter Your Name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 11),
            ElevatedButton(
              onPressed: () async {
                var name = controller.text.toString();
                var prefs = await SharedPreferences.getInstance();
                prefs.setString("name", name);

                /*Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => SharedData(
                          nameData: name,
                        )));*/
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Add Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
