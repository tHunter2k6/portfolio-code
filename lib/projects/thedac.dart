// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/home_page.dart';
import 'package:mywebsite/theme/my_theme.dart';

class Thedac extends StatelessWidget {
  const Thedac({super.key});

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
          'T H E D A C',
          minFontSize: 1,
          maxLines: 1,
          style: TextStyle(
            color: scaffoldBackgroundColor,
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
        ),
        centerTitle: true,
      ),

      // * PORTRAIT MODE *
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? Center(
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: ListView(
                  children: [
                    // IMAGE CARD
                    Container(
                      padding: EdgeInsets.all(25.w),
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(15.r),
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
                                      color: Colors.black.withOpacity(0.25),
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
                                                BorderRadius.circular(20.r),
                                          ),
                                          child: AspectRatio(
                                            aspectRatio: 16 / 9,
                                            child: Image.asset(
                                              'lib/assets/dac.jpeg',
                                              fit: BoxFit.cover,
                                            ),
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
                          width: 500.w,
                          height: 200.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage('lib/assets/dac.jpeg'),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20.h),

                    // DESCRIPTION CARD
                    Container(
                      padding: EdgeInsets.all(25.w),
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(15.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: AutoSizeText(
                        "A portfolio website made for ‘theDAC’, a digital services business that manages and sets up online stores for clients. theDAC provides storefront setup, product uploads, design assets, and overall digital management — all showcased through a clean, modern interface.",
                        minFontSize: 1,
                        maxLines: 6,
                        style: TextStyle(
                          color: Colors.grey[200],
                          fontSize: 15.sp,
                        ),
                      ),
                    ),

                    SizedBox(height: 35.h),
                  ],
                ),
              ),
            )

          // * LANDSCAPE MODE *
          : Center(
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // TEXT BLOCK
                    Container(
                      width: 480.w,
                      height: 300.h,
                      padding: EdgeInsets.all(30.w),
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(15.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Center(
                        child: ListView(
                          children: [
                            AutoSizeText(
                              "A modern portfolio website built for ‘theDAC’, a digital services company that helps clients manage and operate their online shops. From store setup and product uploads to graphics and digital optimization, theDAC’s offerings are presented in a clean, professional layout.",
                              minFontSize: 1,
                              maxLines: 8,
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: 20.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // IMAGE BLOCK
                    Container(
                      height: 300.h,
                      padding: EdgeInsets.all(30.w),
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(15.r),
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
                                      color: Colors.black.withOpacity(0.25),
                                    ),
                                    Center(
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.8,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.r),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'lib/assets/dac.jpeg'),
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
                          width: 500.w,
                          height: 200.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage('lib/assets/dac.jpeg'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
