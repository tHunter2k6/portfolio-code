import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/theme/my_theme.dart';

Widget navItem(String text, VoidCallback onTap, bool active) {
  return InkWell(
    onTap: onTap,
    child: AutoSizeText(
      text,
      style: TextStyle(
        fontSize: 18.sp,
        color: myPrimaryTextColor,
        fontWeight: active ? FontWeight.bold : FontWeight.normal,
      ),
    ),
  );
}
