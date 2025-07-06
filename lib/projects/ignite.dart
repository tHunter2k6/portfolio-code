// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/home_page.dart';

class Ignite extends StatelessWidget {
  const Ignite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      appBar: AppBar(
        backgroundColor: myAppBarColor,
        iconTheme: IconThemeData(
          color: myBackgroundColor,
        ),
        title: AutoSizeText(
          style: TextStyle(
            color: myBackgroundColor,
            fontWeight: FontWeight.bold,
          ),
          'I G N I T E',
          minFontSize: 1,
          maxLines: 1,
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
                                                  'lib/assets/2.png'),
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
                                image: AssetImage('lib/assets/2.png'),
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
                              "Key Features of the App: ",
                              minFontSize: 1,
                              maxLines: 5,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color(0xFF40C4FF),
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenUtil().setSp(15),
                              ),
                            ),
                            SizedBox(height: ScreenUtil().setHeight(15)),
                            AutoSizeText(
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(15),
                              ),
                              " - Auction: Interactive bidding on industries to work on during the summit.",
                              minFontSize: 1,
                              maxLines: 10,
                            ),
                            AutoSizeText(
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(15),
                              ),
                              " - Set Room Booking: Reserve slots for photoshoots, meetings, and activities.",
                              minFontSize: 1,
                              maxLines: 10,
                            ),
                            SizedBox(height: ScreenUtil().setHeight(15)),
                            AutoSizeText(
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(15),
                              ),
                              " - Home Page: Overview of IGNITE, its goals, and key events.",
                              minFontSize: 1,
                              maxLines: 10,
                            ),
                            AutoSizeText(
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(15),
                              ),
                              " - User Profile: Displays Delegation ID, remaining ICs (currency), industry, and booked set slots.",
                              minFontSize: 1,
                              maxLines: 10,
                            ),
                            AutoSizeText(
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(15),
                              ),
                              " - Timeline: Shows upcoming and past events to manage your schedule.",
                              minFontSize: 1,
                              maxLines: 10,
                            ),
                            AutoSizeText(
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(15),
                              ),
                              " - Contact Page: Contact options for the IGNITE team, including social media, email, and phone.",
                              minFontSize: 1,
                              maxLines: 10,
                            )
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
                                  "Key Features of the App: ",
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
                                    fontSize: ScreenUtil().setSp(20),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  " - Auction: ",
                                  minFontSize: 1,
                                  maxLines: 10,
                                ),
                                AutoSizeText(
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(15),
                                  ),
                                  "   For the first time in 11 years, the Ignite Auction on the palm of your hand! Go head to head against other users for your desired industry.",
                                  minFontSize: 1,
                                  maxLines: 10,
                                ),
                                SizedBox(height: ScreenUtil().setHeight(15)),
                                AutoSizeText(
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(20),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  " - Set Room Booking: ",
                                  minFontSize: 1,
                                  maxLines: 10,
                                ),
                                AutoSizeText(
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(15),
                                  ),
                                  "   Be quick and reserve slots for a room where you can shoot an advertisement for your product.",
                                  minFontSize: 1,
                                  maxLines: 10,
                                ),
                                SizedBox(height: ScreenUtil().setHeight(15)),
                                AutoSizeText(
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(20),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  " - Home Page: ",
                                  minFontSize: 1,
                                  maxLines: 10,
                                ),
                                AutoSizeText(
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(15),
                                  ),
                                  "   Overview of IGNITE, its goals, and key events.",
                                  minFontSize: 1,
                                  maxLines: 10,
                                ),
                                SizedBox(height: ScreenUtil().setHeight(15)),
                                AutoSizeText(
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(20),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  " - User Profile: ",
                                  minFontSize: 1,
                                  maxLines: 10,
                                ),
                                AutoSizeText(
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(15),
                                  ),
                                  "   Keep a track of ICs balance, number of sets under your name and your industry ( incase you forget ^_^ )  ",
                                  minFontSize: 1,
                                  maxLines: 10,
                                ),
                                SizedBox(height: ScreenUtil().setHeight(15)),
                                AutoSizeText(
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(20),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  " - Timeline: ",
                                  minFontSize: 1,
                                  maxLines: 10,
                                ),
                                AutoSizeText(
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(15),
                                  ),
                                  "   Showing all key events of Ignite, updates in real-time!",
                                  minFontSize: 1,
                                  maxLines: 10,
                                ),
                                SizedBox(height: ScreenUtil().setHeight(15)),
                                AutoSizeText(
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(20),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  " - Contact Page: ",
                                  minFontSize: 1,
                                  maxLines: 10,
                                ),
                                AutoSizeText(
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(15),
                                  ),
                                  "   Contact options for the IGNITE team, including social media, email, and phone.",
                                  minFontSize: 1,
                                  maxLines: 10,
                                )
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
                                                      'lib/assets/ig1.png'),
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
                                height: ScreenUtil().setHeight(300),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: AssetImage('lib/assets/ig1.png'),
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
                                                      'lib/assets/ig2.png'),
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
                                height: ScreenUtil().setHeight(300),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: AssetImage('lib/assets/ig2.png'),
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
