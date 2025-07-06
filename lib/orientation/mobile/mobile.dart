// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/home_page.dart';
import 'package:mywebsite/widgets/containers_grid.dart';
import 'package:mywebsite/pages/about.dart';
import 'package:mywebsite/pages/contact.dart';
import 'package:mywebsite/pages/resume.dart';
import 'package:mywebsite/pages/projects.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

List pages = [
  HomePage(),
  ResumePage(),
  AboutPage(),
  Projects(),
  ContactPage(),
];
List<String> titles = [
  'Welcome!',
  'Resume',
  'About',
  'Projects',
  'Contact',
];
int pageIndex = 0;

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  pageChanger(int newIndex) {
    setState(() {
      pageIndex = newIndex;
    });
    print(pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: myBackgroundColor,
        ),
        backgroundColor: myAppBarColor,
        title: AutoSizeText(
          titles[pageIndex],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: myBackgroundColor,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: ListView(
          children: [
            Container(
              width: ScreenUtil().setWidth(500),
              height: ScreenUtil().setHeight(300),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('lib/assets/my_logo1.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(15),
              ),
              child: Divider(color: Colors.grey[300]),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(50)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: ScreenUtil().setHeight(25)),
                  GestureDetector(
                    onTap: () {
                      pageChanger(0);
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        SizedBox(width: ScreenUtil().setHeight(10)),
                        AutoSizeText(
                          "Home ",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(20),
                            fontWeight: pageIndex == 0
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: myAppBarColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(25)),
                  GestureDetector(
                    onTap: () {
                      pageChanger(1);
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.newspaper_outlined),
                        SizedBox(width: ScreenUtil().setHeight(10)),
                        AutoSizeText(
                          "Resume",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(20),
                            fontWeight: pageIndex == 1
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: myAppBarColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(25)),
                  GestureDetector(
                    onTap: () {
                      pageChanger(2);
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.question_mark),
                        SizedBox(width: ScreenUtil().setHeight(10)),
                        AutoSizeText(
                          "About",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(20),
                            fontWeight: pageIndex == 2
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: myAppBarColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(25)),
                  GestureDetector(
                    onTap: () {
                      pageChanger(3);
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.construction),
                        SizedBox(width: ScreenUtil().setHeight(10)),
                        AutoSizeText(
                          "Projects",
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(20),
                              fontWeight: pageIndex == 3
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: myAppBarColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(25)),
                  GestureDetector(
                    onTap: () {
                      pageChanger(4);
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: ScreenUtil().setHeight(10)),
                        AutoSizeText(
                          "Contact",
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(20),
                              fontWeight: pageIndex == 4
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: myAppBarColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: pageIndex == 0
          ? ScrollTransformView(
              children: [
                ScrollTransformItem(
                  builder: (scrollOffset) {
                    return Padding(
                      padding:
                          EdgeInsets.only(top: ScreenUtil().setWidth(220.0)),
                      child: Center(
                        child: Container(
                          width: ScreenUtil().setWidth(300),
                          height: ScreenUtil().setHeight(200),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                          ),
                        ),
                      ),
                    );
                  },
                  offsetBuilder: (scrollOffset) {
                    if (scrollOffset < 200.h) {
                      return Offset(0, scrollOffset);
                    } else {
                      return Offset(0, 200.h);
                    }
                  },
                ),
                ScrollTransformItem(
                  offsetBuilder: (scrollOffset) => Offset(0, -50.h),
                  builder: (scrollOffset) {
                    double reveal = ((scrollOffset) / 230.h).clamp(0.1, 1.0);

                    return Center(
                      child: SizedBox(
                        width: ScreenUtil().setWidth(400),
                        child: Stack(
                          children: [
                            Stack(
                              children: [
                                ClipRect(
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Stack(
                                      children: [
                                        Container(
                                          // width: 400.h,
                                          height: 260.w,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'lib/assets/y2.png'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                ClipRect(
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    heightFactor: reveal,
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: ScreenUtil().setWidth(400),
                                          height: ScreenUtil().setHeight(300),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'lib/assets/y1.png'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                ScrollTransformItem(
                  builder: (scrollOffset) {
                    if (scrollOffset < 100.h) {
                      return SizedBox(height: 900.h);
                    } else {
                      return Column(
                        children: [
                          // SizedBox(
                          //   height: 100,
                          // ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(25),
                            ),
                            child: Divider(color: Colors.grey[300]),
                          ),
                          Padding(
                            padding: EdgeInsets.all(ScreenUtil().setWidth(15)),
                            child: Center(
                              child: ZoomIn(
                                config: BaseAnimationConfig(
                                  repeat: true,
                                  duration: 1.seconds,
                                  child: AutoSizeText(
                                    maxLines: 100,
                                    minFontSize: 1,
                                    textAlign: TextAlign.center,
                                    "Take a look at my recent projects below",
                                    style: TextStyle(
                                      fontSize: ScreenUtil().setSp(15),
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(50),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: MyContainersGrid(isRecent: true),
                          ),
                          // SizedBox(
                          //   height: ScreenUtil().setHeight(150),
                          // )
                        ],
                      );
                    }
                  },
                ),
              ],
            )
          : pageIndex == 1
              ? ResumePage()
              : pageIndex == 2
                  ? AboutPage()
                  : pageIndex == 3
                      ? Projects()
                      : ContactPage(),
    );
  }
}
