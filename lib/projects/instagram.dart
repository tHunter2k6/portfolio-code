// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/home_page.dart';

class Instagram extends StatelessWidget {
  const Instagram({super.key});

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
          'I N S T A G R A M ?',
          minFontSize: 1,
          maxLines: 1,
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
                                                Image.asset('lib/assets/3.png'),
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
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('lib/assets/3.png'),
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
                        children: [
                          AutoSizeText(
                            "My Own Instagram ",
                            minFontSize: 1,
                            maxLines: 5,
                            style: TextStyle(
                              color: Color(0xFF40C4FF),
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(15),
                            ),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(15)),
                          Column(
                            children: [
                              AutoSizeText(
                                style: TextStyle(
                                  color: Colors.grey[200],
                                  fontSize: 15.sp,
                                ),
                                "As my first ever project I created an instagram clone app. The sole reason for this project was to understand how flutter and firebase worked. This is not my brainchild, this is all youtube. You can create your own user, follow other accounts, and even upload images!",
                                minFontSize: 1,
                                maxLines: 10,
                              ),
                            ],
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
                padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: ScreenUtil().setHeight(400),
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
                            children: [
                              AutoSizeText(
                                "My Own Instagram ",
                                minFontSize: 1,
                                maxLines: 5,
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
                                "As my first ever project I created an instagram clone app. The sole reason for this project was to understand how flutter and firebase worked. This is not my brainchild, this is all youtube. You can create your own user, follow other accounts, and even upload images!",
                                minFontSize: 1,
                                maxLines: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenUtil().setHeight(400),
                      width: ScreenUtil().setWidth(490),
                      padding: EdgeInsets.all(ScreenUtil().setWidth(30)),
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(10),
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
                                                AssetImage('lib/assets/3.png'),
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
                              fit: BoxFit.cover,
                              image: AssetImage('lib/assets/3.png'),
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
