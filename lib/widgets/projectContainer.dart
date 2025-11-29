// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/home_page.dart';
import 'package:mywebsite/theme/my_theme.dart';
import 'package:mywebsite/widgets/project_desc.dart';

class ProjectContainer extends StatefulWidget {
  final String backgroundImage;
  final String text;
  final Widget projectPages;
  const ProjectContainer(
      {super.key,
      required this.backgroundImage,
      required this.text,
      required this.projectPages});

  @override
  State<ProjectContainer> createState() => _ProjectContainerState();
}

Map<String, String> projectsDetails = {
  "Ignite App":
      "App for FPS A-Level's event,Ignite, featuring Registration, Auction & Trading simulations, TVC sets booking and more.",
  "LR Autos":
      "A Customer Management System for an automobile workshop, LR Autos.",
  "theDAC": "A portfolio website for an online business.",
  "Forex":
      "A foreign exchange simulation software,for FPS Ignite 11.0, designed to give delegates a real world experience of trading.",
  "Sciverse Website":
      "Website for FPS A-level's science olympiad, SciVerse, with a custom registration form hosted on firestore.",
  "Wardrobe":
      "Your own digital wardrobe! Save clothing items and create outfits. ",
  "Instagram":
      "My first project, followed a tutorial on youtube to get an idea of flutter and firebase ",
};
bool _isHovered = false;

class _ProjectContainerState extends State<ProjectContainer> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape
        ? Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(80),
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return widget.projectPages;
                    },
                  ),
                );
              },
              child: MouseRegion(
                onEnter: (_) => setState(() => _isHovered = true),
                onExit: (_) => setState(() => _isHovered = false),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: ScreenUtil().setWidth(350),
                          height: ScreenUtil().setHeight(250),
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.w),
                              topRight: Radius.circular(12.w),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(widget.backgroundImage),
                            ),
                          ),
                        ),
                        Container(
                          width: ScreenUtil().setWidth(300),
                          height: ScreenUtil().setHeight(180),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.w),
                              bottomRight: Radius.circular(12.w),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.all(ScreenUtil().setWidth(12.0)),
                                child: Center(
                                  child: AutoSizeText(
                                    textAlign: TextAlign.center,
                                    widget.text,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: ScreenUtil().setSp(20),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.all(ScreenUtil().setWidth(12.0)),
                                child: AutoSizeText(
                                  textAlign: TextAlign.center,
                                  "${projectsDetails[widget.text]}",
                                  maxLines: 4,
                                  minFontSize: 1,
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: ScreenUtil().setSp(16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    AnimatedOpacity(
                      duration: Duration(milliseconds: 200),
                      opacity: _isHovered ? 1.0 : 0.0,
                      child: Container(
                        width: ScreenUtil().setWidth(350),
                        height: ScreenUtil().setHeight(550),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.w),
                          color: Colors.black.withOpacity(0.4),
                        ),
                        child: Center(
                          child: AutoSizeText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            "go to  ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey[300],
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return widget.projectPages;
                    },
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    // width: ScreenUtil().setWidth(200),
                    height: ScreenUtil().setHeight(400),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.w),
                        topRight: Radius.circular(12.w),
                      ),
                      color: Colors.grey[900],
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(widget.backgroundImage),
                      ),
                    ),
                  ),
                  Container(
                    // width: ScreenUtil().setWidth(200),
                    // height: ScreenUtil().setHeight(150),
                    decoration: BoxDecoration(
                      color: myAppBarColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.w),
                        bottomRight: Radius.circular(12.w),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(ScreenUtil().setWidth(12.0)),
                          child: AutoSizeText(
                            widget.text,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: ScreenUtil().setWidth(0.0),
                            bottom: ScreenUtil().setWidth(12.0),
                            right: ScreenUtil().setWidth(12.0),
                            left: ScreenUtil().setWidth(12.0),
                          ),
                          child: AutoSizeText(
                            "${projectsDetails[widget.text]}",
                            // maxLines: 6,
                            minFontSize: 1,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: ScreenUtil().setSp(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h)
                ],
              ),
            ),
          );
  }
}
