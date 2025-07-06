// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/widgets/projectContainer.dart';
import 'package:mywebsite/projects/forex.dart';
import 'package:mywebsite/projects/ignite.dart';
import 'package:mywebsite/projects/instagram.dart';
import 'package:mywebsite/widgets/hover_container.dart';
import 'package:mywebsite/projects/sciverse.dart';
import 'package:mywebsite/projects/wardrobe.dart';

List<String> projects = [
  "Ignite App",
  "Forex",
  "Sciverse Website",
  "Wardrobe",
  "Instagram",
];

List<String> projectsBg = [
  'lib/assets/ignite_logo1.png',
  'lib/assets/forex.png',
  'lib/assets/sciverse_logo.png',
  'lib/assets/wardrobe_1.png',
  'lib/assets/instagram.png',
];

List<String> projectsCovers = [
  'lib/assets/ignite_logo1.png',
  'lib/assets/forex.png',
  'lib/assets/sciverse_logo.png',
  'lib/assets/wardrobe_1.png',
  'lib/assets/instagram.png',
];
List<Widget> projectPages = const [
  Ignite(),
  Forex(),
  Sciverse(),
  Wardrobe(),
  Instagram(),
];

class MyContainersGrid extends StatefulWidget {
  final bool isRecent;
  const MyContainersGrid({super.key, required this.isRecent});

  @override
  State<MyContainersGrid> createState() => _MyContainersGridState();
}

class _MyContainersGridState extends State<MyContainersGrid> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape
        ? GridView.builder(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            itemCount: widget.isRecent == true ? 3 : projects.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (widget.isRecent == true ? 3 : 2),
              childAspectRatio: 1,
              mainAxisSpacing: ScreenUtil().setHeight(0),
              crossAxisSpacing: ScreenUtil().setWidth(15),
            ),
            itemBuilder: (context, index) {
              return widget.isRecent
                  ? HoverContainer(
                      backgroundImage: projectsBg[index],
                      text: projects[index],
                      projectPages: projectPages[index],
                    )
                  : ProjectContainer(
                      backgroundImage: projectsCovers[index],
                      text: projects[index],
                      projectPages: projectPages[index],
                    );
            },
          )
        : Padding(
            padding: EdgeInsets.only(
              top: 100.h,
            ),
            child: Column(
              children: List.generate(
                widget.isRecent == true ? 3 : projects.length,
                (index) => Center(
                  child: ProjectContainer(
                    backgroundImage: projectsCovers[index],
                    text: projects[index],
                    projectPages: projectPages[index],
                  ),
                ),
              ),
            ));
  }
}
