import 'package:all_in_one_widgets/basic_widgets/alphabetical_list.dart';
import 'package:all_in_one_widgets/basic_widgets/animations.dart';
import 'package:all_in_one_widgets/basic_widgets/all_buttons.dart';
import 'package:all_in_one_widgets/basic_widgets/banner.dart';
import 'package:all_in_one_widgets/basic_widgets/bottom_drawer.dart';
import 'package:all_in_one_widgets/basic_widgets/clip_path_screen.dart';
import 'package:all_in_one_widgets/basic_widgets/clip_r_rect.dart';
import 'package:all_in_one_widgets/basic_widgets/drop_down_button.dart';
import 'package:all_in_one_widgets/basic_widgets/explicit_animation.dart';
import 'package:all_in_one_widgets/basic_widgets/hero_animation.dart';
import 'package:all_in_one_widgets/basic_widgets/page_transitions.dart';
import 'package:all_in_one_widgets/basic_widgets/radio_checkbox_button.dart';
import 'package:all_in_one_widgets/basic_widgets/date_time_picker.dart';
import 'package:all_in_one_widgets/basic_widgets/dialog_box.dart';
import 'package:all_in_one_widgets/basic_widgets/grid_view.dart';
import 'package:all_in_one_widgets/basic_widgets/all_animations.dart';
import 'package:all_in_one_widgets/basic_widgets/screen_for_basic_widgets/animated_text.dart';
import 'package:all_in_one_widgets/basic_widgets/snack_bar_screen.dart';
import 'package:all_in_one_widgets/modules/list__tile_edited.dart';
import 'package:flutter/material.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({super.key});

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  bool isHomeBackground = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "HomePage",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 32,
              color: Colors.white,
            ),
          ),
          Switch(
            value: isHomeBackground,
            thumbIcon: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return const Icon(Icons.sunny, color: Colors.blue);
              } else {
                return const Icon(Icons.nightlight, color: Colors.red);
              }
            }),
            onChanged: (newValue) {
              setState(() {
                isHomeBackground = newValue;
              });
            },
          ),
        ],
      ),
      backgroundColor: isHomeBackground ? Colors.blue.shade100 : Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            EditListTile(
              color: Colors.purple,
              indexNo: 1,
              titleName: "Buttons",
              subTitleName: "Complete",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const AllButtons()));
              },
            ),
            EditListTile(
              color: Colors.purple,
              indexNo: 2,
              titleName: "Drop Down Button",
              subTitleName: "Completed",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const DropDownButton()));
              },
            ),
            EditListTile(
              color: Colors.purple,
              indexNo: 3,
              titleName: "Banner",
              subTitleName: "Complete",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const BannerPage()));
              },
            ),
            EditListTile(
              color: Colors.purple,
              indexNo: 4,
              titleName: "Bottom Sheet",
              subTitleName: "Complete",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const BottomSheetScreen()));
              },
            ),
            EditListTile(
              color: Colors.purple,
              indexNo: 5,
              titleName: "Grid View",
              subTitleName: "Complete",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const GridViewPattern()));
              },
            ),
            EditListTile(
              color: Colors.purple,
              indexNo: 6,
              titleName: "All Animations",
              subTitleName: "Complete",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const AllAnimations()));
              },
            ),
            EditListTile(
              color: Colors.purple,
              indexNo: 9,
              titleName: "Alphabetically List",
              subTitleName: "Complete",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const AlphabeticalList()));
              },
            ),
            EditListTile(
              color: Colors.purple,
              indexNo: 10,
              titleName: "Dialog Boxes",
              subTitleName: "Completed",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const DialogBoxes()));
              },
            ),
            EditListTile(
              color: Colors.purple,
              indexNo: 11,
              titleName: "Date & Timer Picker",
              subTitleName: "Completed",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const DateTimePicker()));
              },
            ),
            EditListTile(
              color: Colors.purple,
              indexNo: 12,
              titleName: "Snack Bar",
              subTitleName: "Completed",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const SnackBarScreen()));
              },
            ),
            EditListTile(
              color: Colors.purple,
              indexNo: 13,
              titleName: "Radio-CheckBox",
              subTitleName: "Completed",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const RadioCheckBox()));
              },
            ),
            EditListTile(
              color: Colors.purple,
              indexNo: 14,
              titleName: "Clip-R-Rect",
              subTitleName: "Completed",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const ClipRRectScreen()));
              },
            ),
            EditListTile(
              color: Colors.purple,
              indexNo: 15,
              titleName: "ClipPath",
              subTitleName: "Completed",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const ClipPathScreen()));
              },
            ),
            EditListTile(
              color: Colors.purple,
              indexNo: 16,
              titleName: "Page Transitions",
              subTitleName: "Complete",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const PageTransitionsScreen()));
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue.shade200,
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.red,
              child: const Padding(
                padding: EdgeInsets.only(left: 20, right: 10, top: 70),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.account_circle_outlined,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Abrar Khira",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 567.4 + 50,
              color: Colors.purple.shade200,
            )
          ],
        ),
      ),
    );
  }
}
