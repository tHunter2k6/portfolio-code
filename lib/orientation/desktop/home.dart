// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/about.dart';
import 'package:mywebsite/pages/contact.dart';
import 'package:mywebsite/pages/home_page.dart';
import 'package:mywebsite/pages/projects.dart';
import 'package:mywebsite/pages/resume.dart';
import 'package:mywebsite/widgets/containers_grid.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_media_buttons/social_media_button.dart';
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

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  int pageIndex = 0;

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
        automaticallyImplyLeading: false,
        backgroundColor: myAppBarColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AutoSizeText(
              "Sanan Sheikh",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: myBackgroundColor,
                fontSize: 20.sp,
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    pageChanger(0);
                  },
                  child: AutoSizeText(
                    "home",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight:
                          pageIndex == 0 ? FontWeight.bold : FontWeight.normal,
                      color: myBackgroundColor,
                    ),
                  ),
                ),
                SizedBox(width: 25),
                GestureDetector(
                  onTap: () {
                    pageChanger(1);
                  },
                  child: AutoSizeText(
                    "resume",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight:
                          pageIndex == 1 ? FontWeight.bold : FontWeight.normal,
                      color: myBackgroundColor,
                    ),
                  ),
                ),
                SizedBox(width: 25),
                GestureDetector(
                  onTap: () {
                    pageChanger(2);
                  },
                  child: AutoSizeText(
                    "about",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight:
                          pageIndex == 2 ? FontWeight.bold : FontWeight.normal,
                      color: myBackgroundColor,
                    ),
                  ),
                ),
                SizedBox(width: 25),
                GestureDetector(
                  onTap: () {
                    pageChanger(3);
                  },
                  child: AutoSizeText(
                    "projects",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: pageIndex == 3
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: myBackgroundColor),
                  ),
                ),
                SizedBox(width: 25),
                GestureDetector(
                  onTap: () {
                    pageChanger(4);
                  },
                  child: AutoSizeText(
                    "contact",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: pageIndex == 4
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: myBackgroundColor),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SocialMediaButton.instagram(
                  color: myBackgroundColor,
                  size: 30.w,
                  onTap: () {
                    _launchURL('https://www.instagram.com/sanansheikhh');
                  },
                ),
                SizedBox(width: 10.w),
                SocialMediaButton.github(
                  color: myBackgroundColor,
                  size: 30.w,
                  onTap: () {
                    _launchURL('https://github.com/tHunter2k6');
                  },
                ),
                SizedBox(width: 10.w),
                SocialMediaButton.facebook(
                  color: myBackgroundColor,
                  size: 30.w,
                  onTap: () {
                    _launchURL('https://www.facebook.com/sanan.sheikh.129');
                  },
                ),
                SizedBox(width: 10.w),
                GestureDetector(
                  child: Icon(
                    Icons.mail_outline,
                    color: myBackgroundColor,
                    size: 30.w,
                  ),
                  onTap: () {
                    _launchURL('mailto:sanansheikh130306@gmail.com');
                  },
                ),
                SizedBox(width: 10.w),
                SocialMediaButton.linkedin(
                  color: myBackgroundColor,
                  size: 30.w,
                  onTap: () {
                    _launchURL(
                        'https://pk.linkedin.com/in/sanan-sheikh-055868322?trk=people-guest_people_search-card');
                  },
                ),
              ],
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
                          EdgeInsets.only(top: ScreenUtil().setWidth(90.0)),
                      child: Center(
                        child: Container(
                          width: ScreenUtil().setWidth(650),
                          height: ScreenUtil().setHeight(420),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                          ),
                        ),
                      ),
                    );
                  },
                  offsetBuilder: (scrollOffset) {
                    if (scrollOffset < 450.h) {
                      return Offset(0, scrollOffset);
                    } else {
                      return Offset(0, 450.h);
                    }
                  },
                ),
                ScrollTransformItem(
                  offsetBuilder: (scrollOffset) => Offset(0, -70.h),
                  // Offset(0, min(600 - scrollOffset, 0)),
                  builder: (scrollOffset) {
                    double reveal = ((scrollOffset) / 500.h).clamp(0.1, 1.0);

                    return Center(
                      child: SizedBox(
                        width: ScreenUtil().setWidth(800),
                        height: ScreenUtil().setHeight(600),
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
                                          width: ScreenUtil().setWidth(800),
                                          height: ScreenUtil().setHeight(600),
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
                                          width: ScreenUtil().setWidth(800),
                                          height: ScreenUtil().setHeight(600),
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
                    if (scrollOffset < 200.h) {
                      return SizedBox(height: 900.h);
                    } else {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(100),
                              ),
                              child: Divider(color: Colors.grey[300]),
                            ),
                            Center(
                              child: ZoomIn(
                                config: BaseAnimationConfig(
                                  repeat: true,
                                  duration: 1.seconds,
                                  child: AutoSizeText(
                                    "Take a look at my recent projects below",
                                    style: TextStyle(
                                      fontSize: ScreenUtil().setSp(25),
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(100),
                            ),
                            Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 150.0),
                                child: MyContainersGrid(isRecent: true)),
                          ],
                        ),
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
