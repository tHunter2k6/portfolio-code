// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/home_page.dart';
import 'package:mywebsite/theme/my_theme.dart';

class Sciverse extends StatelessWidget {
  const Sciverse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: scaffoldBackgroundColor,
        ),
        backgroundColor: myAppBarColor,
        title: AutoSizeText(
          'S C I V E R S E',
          minFontSize: 1,
          maxLines: 1,
          style: TextStyle(
            color: scaffoldBackgroundColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? Center(
              child: Padding(
                padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
                child: ListView(
                  children: [
                    Container(
                      padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                barrierDismissible: true,
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () => Navigator.of(context).pop(),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: double.infinity,
                                          width: double.infinity,
                                          color: Colors.black.withOpacity(0.2),
                                        ),
                                        Center(
                                          child: InteractiveViewer(
                                            child: Container(
                                              constraints: BoxConstraints(
                                                maxWidth: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                maxHeight:
                                                    MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.6,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: AspectRatio(
                                                aspectRatio: 16 / 9,
                                                child: Image.asset(
                                                    'lib/assets/6.png'),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              width: ScreenUtil().setWidth(500),
                              height: ScreenUtil().setHeight(200),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('lib/assets/6.png'),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(20),
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                barrierDismissible: true,
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () => Navigator.of(context).pop(),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: double.infinity,
                                          width: double.infinity,
                                          color: Colors.black.withOpacity(0.2),
                                        ),
                                        Center(
                                          child: InteractiveViewer(
                                            child: Container(
                                              constraints: BoxConstraints(
                                                maxWidth: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                maxHeight:
                                                    MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.6,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: AspectRatio(
                                                aspectRatio: 16 / 9,
                                                child: Image.asset(
                                                    'lib/assets/7.png'),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              width: ScreenUtil().setWidth(500),
                              height: ScreenUtil().setHeight(200),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('lib/assets/7.png'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    Container(
                      padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            style: TextStyle(
                              color: Colors.grey[200],
                              fontSize: ScreenUtil().setSp(15),
                            ),
                            "A website for FPS A-Level's science olympiad, SciVerse 2.0, designed to engage participants and facilitate easy registration. It features event details and a registration form that securely stores data in Firestore. This project highlights my experience in front-end design and back-end integration, ensuring a smooth and efficient user experience.",
                            minFontSize: 1,
                            maxLines: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Center(
              child: Padding(
                padding: EdgeInsets.all(ScreenUtil().setWidth(30)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: ScreenUtil().setWidth(490),
                      height: ScreenUtil().setHeight(500),
                      padding: EdgeInsets.all(ScreenUtil().setWidth(30)),
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: ListView(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: AutoSizeText(
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(20),
                                  ),
                                  "A website for FPS A-Level's science olympiad, SciVerse, designed to engage participants and facilitate easy registration. It features event details and a registration form that securely stores data in Firestore. This project highlights my expertise in front-end design and back-end integration, ensuring a smooth and efficient user experience.",
                                  minFontSize: 1,
                                  maxLines: 100,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenUtil().setHeight(500),
                      padding: EdgeInsets.all(ScreenUtil().setWidth(30)),
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                barrierDismissible: true,
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () => Navigator.of(context).pop(),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: double.infinity,
                                          width: double.infinity,
                                          color: Colors.black.withOpacity(0.2),
                                        ),
                                        Center(
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.8,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'lib/assets/6.png'),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              width: ScreenUtil().setWidth(500),
                              height: ScreenUtil().setHeight(200),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('lib/assets/6.png'),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(20.h),
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                barrierDismissible: true,
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () => Navigator.of(context).pop(),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: double.infinity,
                                          width: double.infinity,
                                          color: Colors.black.withOpacity(0.2),
                                        ),
                                        Center(
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.8,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'lib/assets/7.png'),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              width: ScreenUtil().setWidth(500),
                              height: ScreenUtil().setHeight(200),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('lib/assets/7.png'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
