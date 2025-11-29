// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/home_page.dart';
import 'package:mywebsite/theme/my_theme.dart';

class Wardrobe extends StatelessWidget {
  const Wardrobe({super.key});

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
          'W A R D R O B E',
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
                                            child:
                                                Image.asset('lib/assets/4.png'),
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
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage('lib/assets/4.png'),
                            ),
                          ),
                        ),
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
                      child: AutoSizeText(
                        "A digital wardrobe which allows you to save different clothes' collections and create and save outfits from those collections! ",
                        minFontSize: 1,
                        maxLines: 5,
                        style: TextStyle(
                          color: Colors.grey[200],
                          fontSize: ScreenUtil().setSp(15),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(35)),
                  ],
                ),
              ),
            )
          : Center(
              child: Padding(
                padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: ScreenUtil().setWidth(490),
                      height: ScreenUtil().setHeight(300),
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
                      child: Center(
                        child: ListView(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  "A digital wardrobe which allows you to save different clothes' collections and create and save outfits from those collections! ",
                                  minFontSize: 1,
                                  maxLines: 5,
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: ScreenUtil().setSp(20),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: ScreenUtil().setHeight(300),
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
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.8,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image:
                                                AssetImage('lib/assets/4.png'),
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
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage('lib/assets/4.png'),
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
