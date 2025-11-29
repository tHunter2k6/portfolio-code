// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/contact.dart';
import 'package:mywebsite/pages/projects.dart';
import 'package:mywebsite/pages/resume.dart';
import 'package:mywebsite/theme/my_theme.dart';
import 'package:mywebsite/widgets/appBar.dart';
import 'package:mywebsite/widgets/containers_grid.dart';
import 'package:mywebsite/widgets/navItem.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

var myBackgroundColor = Color.fromARGB(255, 52, 44, 44);
var myAppBarColor = Colors.grey[300];
List pages = [
  HomePageResponsive(),
  HomePageResponsive(),
  Projects(),
  ContactPage(),
];

class HomePageResponsive extends StatefulWidget {
  const HomePageResponsive({super.key});

  @override
  State<HomePageResponsive> createState() => _HomePageResponsiveState();
}

class _HomePageResponsiveState extends State<HomePageResponsive> {
  int pageIndex = 0;
  final ScrollController _scrollController = ScrollController();
  final GlobalKey aboutKey = GlobalKey();

  void scrollToAbout() {
    final contextAbout = aboutKey.currentContext;
    if (contextAbout != null) {
      Scrollable.ensureVisible(
        contextAbout,
        duration: Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  pageChanger(int newIndex) {
    setState(() {
      pageIndex = newIndex;
    });
    if (newIndex == 1) scrollToAbout();
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).orientation == Orientation.portrait;

    Widget projectSection() {
      return Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.w),
              child: Divider(color: Colors.grey[300]),
            ),
            Padding(
              padding: EdgeInsets.all(15.w),
              child: Center(
                child: ZoomIn(
                  config: BaseAnimationConfig(
                    repeat: true,
                    duration: 1.seconds,
                    child: AutoSizeText(
                      "Take a look at my recent projects below",
                      maxLines: 2,
                      minFontSize: 12,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: isMobile ? 15.sp : 25.sp,
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: MyContainersGrid(isRecent: true),
            ),
          ],
        ),
      );
    }

    Widget aboutSection({required bool isMobile}) {
      double containerHeight = isMobile ? 400.h : 350.h;
      double containerWidth = isMobile ? double.infinity : 400.w;

      return Container(
        key: aboutKey,
        padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
        // color: myBackgroundColor,
        child: Column(
          children: [
            AutoSizeText(
              "About Me",
              maxLines: 1,
              style: TextStyle(
                fontSize: isMobile ? 24.sp : 38.sp,
                color: myPrimaryTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.h),
            isMobile
                ? Column(
                    children: [
                      Container(
                        height: 250.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('lib/assets/full.jpeg'),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        height: containerHeight,
                        padding: EdgeInsets.all(20.w),
                        decoration: BoxDecoration(
                          color: Colors.grey[850],
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  "Who Am I?",
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: myHeadingTextColor,
                                  ),
                                ),
                                SizedBox(height: 15.h),
                                AutoSizeText(
                                  "Hi! I’m Sanan Sheikh, a motivated computer science student passionate about programming, problem-solving, and creative digital projects. I explore app & web development, Flutter, Firebase, Python, and enjoy graphic design, video editing, and learning new languages.",
                                  maxLines: 8,
                                  minFontSize: 12,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                final url =
                                    'https://docs.google.com/document/d/1AlGdCoYQQVtWFopVSYIwlGYwqI4zFrIBbTPtbaKiSLg/export?format=pdf';
                                final anchor = html.AnchorElement(href: url)
                                  ..target = 'blank'
                                  ..download = 'sanan_resume.pdf'
                                  ..click();
                              },
                              icon: Icon(
                                Icons.download,
                                size: 20.w,
                                color: myPrimaryTextColor,
                              ),
                              label: Text(
                                "Download Resume",
                                style: TextStyle(
                                    fontSize: 14.sp, color: myPrimaryTextColor),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: myHeadingTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: containerWidth / 1.2,
                        height: containerHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('lib/assets/full.jpeg'),
                          ),
                        ),
                      ),
                      Container(
                        width: containerWidth,
                        height: containerHeight,
                        padding: EdgeInsets.all(20.w),
                        decoration: BoxDecoration(
                          color: Colors.grey[850],
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  "Who Am I?",
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.bold,
                                    color: myHeadingTextColor,
                                  ),
                                ),
                                SizedBox(height: 15.h),
                                AutoSizeText(
                                  "Hi! I’m Sanan Sheikh, a motivated computer science student passionate about programming, problem-solving, and creative digital projects. I explore app & web development, Flutter, Firebase, Python, and enjoy graphic design, video editing, and learning new languages.",
                                  maxLines: 10,
                                  minFontSize: 14,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                final url =
                                    'https://docs.google.com/document/d/1AlGdCoYQQVtWFopVSYIwlGYwqI4zFrIBbTPtbaKiSLg/export?format=pdf';
                                final anchor = html.AnchorElement(href: url)
                                  ..target = 'blank'
                                  ..download = 'sanan_resume.pdf'
                                  ..click();
                              },
                              icon: Icon(
                                Icons.download,
                                size: 20.w,
                                color: myPrimaryTextColor,
                              ),
                              label: Text(
                                "Download Resume",
                                style: TextStyle(
                                    fontSize: 15.sp, color: myPrimaryTextColor),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: myHeadingTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      );
    }

    Widget headerSection() {
      return ScrollTransformView(
        children: [
          ScrollTransformItem(builder: (builder) {
            return Column(
              children: [
                // nav bar
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                  child: MaxWidth(
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => HomePageResponsive()),
                            );
                          },
                          child: Container(
                            height: 50.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment.centerLeft,
                                image: AssetImage('lib/assets/logo2.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: isMobile ? 0.w : 100.w),
                        // CENTER — nav (never overflows)
                        isMobile
                            ? Flexible(
                                fit: FlexFit.loose,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    navItem("about", () => scrollToAbout(),
                                        pageIndex == 1),
                                    SizedBox(width: 12.w),
                                    navItem("projects", () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Projects()),
                                      );
                                    }, pageIndex == 2),
                                    SizedBox(width: 12.w),
                                    navItem("contact", () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => ContactPage()),
                                      );
                                    }, pageIndex == 3),
                                  ],
                                ),
                              )
                            : Expanded(
                                child: Wrap(
                                  alignment: WrapAlignment.center,
                                  spacing: 15.w,
                                  runSpacing: 8.h,
                                  children: [
                                    navItem("about", () => scrollToAbout(),
                                        pageIndex == 1),
                                    navItem("projects", () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Projects()),
                                      );
                                    }, pageIndex == 2),
                                    navItem("contact", () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => ContactPage()),
                                      );
                                    }, pageIndex == 3),
                                  ],
                                ),
                              ),

                        if (!isMobile)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SocialMediaButton.instagram(
                                color: myPrimaryTextColor,
                                size: 30.w,
                                onTap: () => launchURL(
                                    'https://www.instagram.com/sanansheikhh'),
                              ),
                              SizedBox(width: 10.w),
                              SocialMediaButton.github(
                                color: myPrimaryTextColor,
                                size: 30.w,
                                onTap: () =>
                                    launchURL('https://github.com/tHunter2k6'),
                              ),
                              SizedBox(width: 10.w),
                              SocialMediaButton.facebook(
                                color: myPrimaryTextColor,
                                size: 30.w,
                                onTap: () => launchURL(
                                    'https://www.facebook.com/sanan.sheikh.129'),
                              ),
                              SizedBox(width: 10.w),
                              InkWell(
                                child: Icon(Icons.mail_outline,
                                    color: myPrimaryTextColor, size: 30.w),
                                onTap: () => launchURL(
                                    'mailto:sanansheikh130306@gmail.com'),
                              ),
                              SizedBox(width: 10.w),
                              SocialMediaButton.linkedin(
                                color: myPrimaryTextColor,
                                size: 30.w,
                                onTap: () => launchURL(
                                    'https://pk.linkedin.com/in/sanan-sheikh-055868322'),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: myPrimaryTextColor,
                  thickness: 1.5,
                ),
              ],
            );
          }),
          ScrollTransformItem(
            builder: (scrollOffset) {
              return Padding(
                padding: EdgeInsets.only(top: isMobile ? 220.h : 90.h),
                child: Center(
                  child: Container(
                    width: isMobile ? 300.w : 600.w,
                    height: isMobile ? 200.h : 300.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade600, width: 3),
                    ),
                  ),
                ),
              );
            },
            offsetBuilder: (scrollOffset) {
              return Offset(
                  0,
                  scrollOffset < (isMobile ? 200.h : 320.h)
                      ? scrollOffset
                      : (isMobile ? 200.h : 320.h));
            },
          ),
          ScrollTransformItem(
            offsetBuilder: (scrollOffset) => Offset(0, -50.h),
            builder: (scrollOffset) {
              double reveal =
                  ((scrollOffset) / (isMobile ? 230.h : 390.h)).clamp(0.1, 1.0);

              return Center(
                child: SizedBox(
                  width: isMobile ? 400.w : 600.w,
                  height: isMobile ? 300.h : 450.h,
                  child: Stack(
                    children: [
                      ClipRect(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: isMobile ? 400.w : 600.w,
                            height: isMobile ? 260.h : 450.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('lib/assets/y2.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      ClipRect(
                        child: Align(
                          alignment: Alignment.topCenter,
                          heightFactor: reveal,
                          child: Container(
                            width: isMobile ? 400.w : 600.w,
                            height: isMobile ? 300.h : 450.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('lib/assets/y1.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          ScrollTransformItem(
            builder: (scrollOffset) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80.w),
                    child: Divider(color: Colors.grey[300]),
                  ),
                  aboutSection(isMobile: isMobile),
                  SizedBox(height: 80.h),
                  projectSection(),
                  SizedBox(height: 50.h),
                ],
              );
            },
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: pageIndex == 0
          ? headerSection()
          : pageIndex == 1
              ? headerSection()
              : pageIndex == 2
                  ? Projects()
                  : ContactPage(),
    );
  }
}

// Colors.black;

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return MediaQuery.of(context).orientation == Orientation.landscape
//         ? Desktop()
//         : Mobile();
//   }
// }
