// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/home_page.dart';
import 'package:mywebsite/theme/my_theme.dart';

class Lrautos extends StatelessWidget {
  const Lrautos({super.key});

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
          'L R A U T O S',
          minFontSize: 1,
          maxLines: 1,
          style: TextStyle(
            color: scaffoldBackgroundColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          MediaQuery.of(context).orientation == Orientation.portrait
              ? Padding(
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
                        child: GestureDetector(
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
                                              maxHeight: MediaQuery.of(context)
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
                                                  'lib/assets/lr1.jpeg'),
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
                                image: AssetImage('lib/assets/lr1.jpeg'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      Container(
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AutoSizeText(
                              "Automobile Workshop Customer Management System",
                              minFontSize: 1,
                              maxLines: 3,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF40C4FF),
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenUtil().setSp(18),
                              ),
                            ),
                            SizedBox(height: ScreenUtil().setHeight(15)),
                            AutoSizeText(
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(15),
                              ),
                              "A complete customer management system designed specifically for an automobile workshop. The system stores detailed customer profiles, maintains full service and work history, and allows the workshop to efficiently create, save, and print invoices.",
                              minFontSize: 1,
                              maxLines: 10,
                            ),
                            SizedBox(height: ScreenUtil().setHeight(15)),
                            AutoSizeText(
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(15),
                              ),
                              "The system ensures easy tracking of every job done on every vehicle—oil changes, repairs, diagnostics, replacements, and more. Each entry is automatically saved and organized by customer and date.",
                              minFontSize: 1,
                              maxLines: 10,
                            ),
                            SizedBox(height: ScreenUtil().setHeight(15)),
                            AutoSizeText(
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(15),
                              ),
                              "With invoice generation built in, the workshop can print customer bills instantly. The invoices include parts cost, service charges, labour charges, taxes, and a full breakdown of work performed.",
                              minFontSize: 1,
                              maxLines: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: ScreenUtil().setWidth(500),
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  "Automobile Workshop Customer Management System",
                                  minFontSize: 1,
                                  maxLines: 5,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Color(0xFF40C4FF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: ScreenUtil().setSp(25),
                                  ),
                                ),
                                SizedBox(height: ScreenUtil().setHeight(15)),
                                AutoSizeText(
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(18),
                                  ),
                                  "A robust customer and vehicle management system designed for an automobile workshop. It stores customer data, complete service history, and generates invoices instantly.",
                                  minFontSize: 1,
                                  maxLines: 10,
                                ),
                                SizedBox(height: ScreenUtil().setHeight(15)),
                                AutoSizeText(
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(18),
                                  ),
                                  "- Maintain detailed work history for every customer.",
                                  minFontSize: 1,
                                  maxLines: 10,
                                ),
                                AutoSizeText(
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(18),
                                  ),
                                  "- Create and print invoices with a full breakdown of services.",
                                  minFontSize: 1,
                                  maxLines: 10,
                                ),
                                AutoSizeText(
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(18),
                                  ),
                                  "- Store parts cost, labour charges, and customer vehicle details.",
                                  minFontSize: 1,
                                  maxLines: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                            color:
                                                Colors.black.withOpacity(0.2),
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
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      'lib/assets/lr1.jpeg'),
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
                                height: ScreenUtil().setHeight(225),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: AssetImage('lib/assets/lr1.jpeg'),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(),
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
                                            color:
                                                Colors.black.withOpacity(0.2),
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
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      'lib/assets/lr2.jpeg'),
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
                                height: ScreenUtil().setHeight(225),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: AssetImage('lib/assets/lr2.jpeg'),
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
        ],
      ),
    );
  }
}
