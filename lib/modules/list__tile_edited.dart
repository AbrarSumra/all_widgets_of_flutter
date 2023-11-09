import 'dart:ffi';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EditListTile extends StatelessWidget {
  EditListTile({
    super.key,
    required this.indexNo,
    required this.titleName,
    required this.subTitleName,
    required this.color,
    required this.onTap,
  });

  int indexNo;
  String titleName;
  String subTitleName;
  Color color;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Column(
        children: [
          const SizedBox(height: 10),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow.shade700,
              radius: 25,
              child: Text(
                indexNo.toString(),
                style: const TextStyle(
                  fontSize: 31,
                  color: Colors.red,
                ),
              ),
            ),
            title: Text(
              titleName,
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              subTitleName,
              style: const TextStyle(
                fontSize: 18,
                letterSpacing: 5,
                color: Colors.yellow,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            tileColor: color,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
