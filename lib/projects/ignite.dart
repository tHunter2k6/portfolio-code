// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/home_page.dart';
import 'package:mywebsite/theme/my_theme.dart';

class Ignite extends StatelessWidget {
  const Ignite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: myAppBarColor,
        iconTheme: IconThemeData(
          color: scaffoldBackgroundColor,
        ),
        title: AutoSizeText(
          style: TextStyle(
            color: scaffoldBackgroundColor,
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
                      // ----- TOP IMAGE CONTAINER -----
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
                                                  'lib/assets/ignite.PNG'),
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
                                image: AssetImage('lib/assets/ignite.PNG'),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: ScreenUtil().setHeight(20)),

                      // ----- UPDATED DESCRIPTION CONTAINER (PORTRAIT) -----
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              "An all round app for FPS A level's trademark event,Ignite, espesially designed to allow much more easier management and streamline everything into one place",
                              minFontSize: 1,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(14),
                              ),
                            ),
                            SizedBox(height: 10),
                            AutoSizeText(
                              "Key Features of the App:",
                              minFontSize: 1,
                              maxLines: 1,
                              style: TextStyle(
                                color: Color(0xFF40C4FF),
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenUtil().setSp(15),
                              ),
                            ),
                            SizedBox(height: 15),
                            AutoSizeText(
                              "• Registration: Register your team directly through the app — fast and secure.",
                              minFontSize: 1,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(14),
                              ),
                            ),
                            SizedBox(height: 10),
                            AutoSizeText(
                              "• Auction: Interactive bidding on your chosen industry during the summit.",
                              minFontSize: 1,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(14),
                              ),
                            ),
                            SizedBox(height: 10),
                            AutoSizeText(
                              "• Forex Simulation: Experience real-time currency trading with dynamic market fluctuations.",
                              minFontSize: 1,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(14),
                              ),
                            ),
                            SizedBox(height: 10),
                            AutoSizeText(
                              "• Set Room Booking: Reserve slots for advertisement shoots and activities.",
                              minFontSize: 1,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(14),
                              ),
                            ),
                            SizedBox(height: 10),
                            AutoSizeText(
                              "• Submissions: Submit all your documents on the app!.",
                              minFontSize: 1,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(14),
                              ),
                            ),
                            SizedBox(height: 10),
                            AutoSizeText(
                              "• User Profile: View your IC balance, industry, and booked set slots.",
                              minFontSize: 1,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(14),
                              ),
                            ),
                            SizedBox(height: 10),
                            AutoSizeText(
                              "• Timeline: Stay updated with all summit events in real time.",
                              minFontSize: 1,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: ScreenUtil().setSp(14),
                              ),
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
                      // ----- LEFT COLUMN (UPDATED LANDSCAPE DESCRIPTION) -----
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  "An all round app for FPS A level's trademark event,Ignite, espesially designed to allow much more easier management and streamline everything into one place",
                                  minFontSize: 1,
                                  maxLines: 3,
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(14),
                                  ),
                                ),
                                SizedBox(height: 10),
                                AutoSizeText(
                                  "Key Features of the App:",
                                  minFontSize: 1,
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Color(0xFF40C4FF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: ScreenUtil().setSp(25),
                                  ),
                                ),
                                SizedBox(height: 20),
                                AutoSizeText(
                                  "• Registration:",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(18),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  minFontSize: 1,
                                ),
                                AutoSizeText(
                                  "  Register your delegation seamlessly through the app — quick and secure.",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(14),
                                  ),
                                  minFontSize: 1,
                                  maxLines: 3,
                                ),
                                SizedBox(height: 15),
                                AutoSizeText(
                                  "• Auction:",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(18),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  minFontSize: 1,
                                ),
                                AutoSizeText(
                                  "  Bid against other delegations in a competitive real-time auction.",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(14),
                                  ),
                                  minFontSize: 1,
                                  maxLines: 3,
                                ),
                                SizedBox(height: 15),
                                AutoSizeText(
                                  "• Forex Simulation:",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(18),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  minFontSize: 1,
                                ),
                                AutoSizeText(
                                  "  A real-time IC trading market that moves based on simulated economic activity.",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(14),
                                  ),
                                  minFontSize: 1,
                                  maxLines: 3,
                                ),
                                SizedBox(height: 15),
                                AutoSizeText(
                                  "• Set Room Booking:",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(18),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  minFontSize: 1,
                                ),
                                AutoSizeText(
                                  "  Secure time slots for set rooms to film your advertisement creatively.",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(14),
                                  ),
                                  minFontSize: 1,
                                  maxLines: 3,
                                ),
                                SizedBox(height: 15),
                                AutoSizeText(
                                  "• Submissions:",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(18),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  minFontSize: 1,
                                ),
                                AutoSizeText(
                                  "  Why go to google forms when you can directly upload your documents here.",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(14),
                                  ),
                                  minFontSize: 1,
                                  maxLines: 3,
                                ),
                                SizedBox(height: 15),
                                AutoSizeText(
                                  "• User Profile:",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(18),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  minFontSize: 1,
                                ),
                                AutoSizeText(
                                  "  Track IC balance, your industry, and set bookings easily.",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(14),
                                  ),
                                  minFontSize: 1,
                                  maxLines: 3,
                                ),
                                SizedBox(height: 15),
                                AutoSizeText(
                                  "• Timeline:",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(18),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  minFontSize: 1,
                                ),
                                AutoSizeText(
                                  "  Stay updated with all IGNITE events in real time.",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(14),
                                  ),
                                  minFontSize: 1,
                                  maxLines: 3,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // ----- RIGHT COLUMN IMAGES -----
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
                                                      'lib/assets/ignite.PNG'),
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
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: AssetImage('lib/assets/ignite.PNG'),
                                  ),
                                ),
                              ),
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
                                height: ScreenUtil().setHeight(200),
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
