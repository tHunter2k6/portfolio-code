// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/home_page.dart';
import 'package:mywebsite/widgets/containers_grid.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: ScreenUtil().setWidth(
                MediaQuery.of(context).orientation == Orientation.landscape
                    ? 20
                    : 0),
            horizontal: ScreenUtil().setWidth(
                MediaQuery.of(context).orientation == Orientation.landscape
                    ? 200
                    : 0),
          ),
          child: MyContainersGrid(
            isRecent: false,
          ),
        ),
      ),
    );
  }
}
