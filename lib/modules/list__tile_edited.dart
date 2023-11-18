import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditListTile extends StatelessWidget {
  const EditListTile({
    super.key,
    required this.indexNo,
    required this.titleName,
    required this.subTitleName,
    required this.color,
    required this.onTap,
  });

  final int indexNo;
  final String titleName;
  final String subTitleName;
  final Color color;
  final VoidCallback onTap;

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
              radius: 25.r,
              child: Text(
                indexNo.toString(),
                style: TextStyle(
                  fontSize: 31.sp,
                  color: Colors.red,
                ),
              ),
            ),
            title: Text(
              titleName,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              subTitleName,
              style: TextStyle(
                fontSize: 18.sp,
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
