// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/home_page.dart';

class Forex extends StatelessWidget {
  const Forex({super.key});

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
          'F O R E X',
          minFontSize: 1,
          maxLines: 1,
          style: TextStyle(
            color: myBackgroundColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: MediaQuery.of(context).orientation == Orientation.portrait
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
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                    barrierDismissible: true,
                                    context: context,
                                    builder: (context) {
                                      return GestureDetector(
                                        onTap: () =>
                                            Navigator.of(context).pop(),
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: double.infinity,
                                              width: double.infinity,
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                            ),
                                            Center(
                                              child: InteractiveViewer(
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                    maxWidth:
                                                        MediaQuery.of(context)
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
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: AspectRatio(
                                                    aspectRatio: 16 / 9,
                                                    child: Image.asset(
                                                        'lib/assets/forexCover.png'),
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
                                      image: AssetImage(
                                          'lib/assets/forexCover.png'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                    barrierDismissible: true,
                                    context: context,
                                    builder: (context) {
                                      return GestureDetector(
                                        onTap: () =>
                                            Navigator.of(context).pop(),
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: double.infinity,
                                              width: double.infinity,
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                            ),
                                            Center(
                                              child: InteractiveViewer(
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                    maxWidth:
                                                        MediaQuery.of(context)
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
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: AspectRatio(
                                                    aspectRatio: 16 / 9,
                                                    child: Image.asset(
                                                        'lib/assets/5.png'),
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
                                      image: AssetImage('lib/assets/5.png'),
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
                            children: [
                              AutoSizeText(
                                "The Foreign Exchange Game ",
                                minFontSize: 1,
                                maxLines: 100,
                                style: TextStyle(
                                  color: Color(0xFF40C4FF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: ScreenUtil().setSp(15),
                                ),
                              ),
                              SizedBox(height: ScreenUtil().setHeight(15)),
                              AutoSizeText(
                                style: TextStyle(
                                  color: Colors.grey[200],
                                  fontSize: ScreenUtil().setSp(15),
                                ),
                                "A fast-paced simulation at the IGNITE Summit where participants traded virtual currencies (ICs) amid fluctuating values due to economic crises. With 8 rounds of increasing complexity, the game tested strategic thinking, risk management, and decision-making, aiming to accumulate the most ICs by the end.",
                                minFontSize: 1,
                                maxLines: 100,
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
                          height: ScreenUtil().setHeight(700),
                          width: ScreenUtil().setWidth(490),
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
                                    "The Foreign Exchange Game ",
                                    minFontSize: 1,
                                    maxLines: 15,
                                    style: TextStyle(
                                      color: Color(0xFF40C4FF),
                                      fontWeight: FontWeight.bold,
                                      fontSize: ScreenUtil().setSp(25),
                                    ),
                                  ),
                                  SizedBox(height: ScreenUtil().setHeight(15)),
                                  AutoSizeText(
                                    style: TextStyle(
                                      color: Colors.grey[200],
                                      fontSize: ScreenUtil().setSp(20),
                                    ),
                                    "A fast-paced simulation at the IGNITE Summit where participants traded virtual currencies (ICs) amid fluctuating values due to economic crises. With 8 rounds of increasing complexity, the game tested strategic thinking, risk management, and decision-making, aiming to accumulate the most ICs by the end.",
                                    minFontSize: 1,
                                    maxLines: 100,
                                  ),
                                  SizedBox(height: ScreenUtil().setHeight(15)),
                                  AutoSizeText(
                                    style: TextStyle(
                                      color: Colors.grey[200],
                                      fontSize: ScreenUtil().setSp(20),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    "How did it work? ",
                                    minFontSize: 1,
                                    maxLines: 100,
                                  ),
                                  AutoSizeText(
                                    style: TextStyle(
                                      color: Colors.grey[200],
                                      fontSize: ScreenUtil().setSp(20),
                                    ),
                                    "Users started off with same amount of ICs and had free hand to buy currencies for 3 minutes before the first crises occured (beginning of the first round), in which they had to judge the affect of that crises on each of the currency and buy/sell accordingly.",
                                    minFontSize: 1,
                                    maxLines: 100,
                                  ),
                                  AutoSizeText(
                                    style: TextStyle(
                                      color: Colors.grey[200],
                                      fontSize: ScreenUtil().setSp(20),
                                    ),
                                    "Prices were updated on the start of the next round when the new crises occured, this continued on for a total of 8 rounds after which all owned currencies were automatically sold according to the last cost of each and the user with most resulting ICs was declared the winner.",
                                    minFontSize: 1,
                                    maxLines: 100,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: ScreenUtil().setHeight(700),
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
                                        onTap: () =>
                                            Navigator.of(context).pop(),
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
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'lib/assets/forexCover.png'),
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
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage(
                                          'lib/assets/forexCover.png'),
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
                                        onTap: () =>
                                            Navigator.of(context).pop(),
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
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        'lib/assets/5.png'),
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
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage('lib/assets/5.png'),
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
        ],
      ),
    );
  }
}
