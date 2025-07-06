// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/home_page.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: ScreenUtil().setHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: AutoSizeText(
                          textAlign: TextAlign.start,
                          "Contact. ",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(25),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(20),
                    ),
                    child: Divider(color: Colors.grey[300]),
                  ),
                  SizedBox(height: 30.w),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(30),
                    ),
                    child: Container(
                      height: 500.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _launchURL('https://github.com/tHunter2k6');
                            },
                            child: Row(
                              children: [
                                SocialMediaButton.github(
                                  size: ScreenUtil().setHeight(25),
                                  color: Colors.grey[300],
                                ),
                                SizedBox(width: 10.w),
                                AutoSizeText(
                                  "tHunter2k6",
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(20),
                                    color: Colors.grey[300],
                                  ),
                                )
                              ],
                            ),
                          ),
                          // SizedBox(height: 30.w),
                          GestureDetector(
                            onTap: () {
                              _launchURL(
                                  'https://www.facebook.com/sanan.sheikh.129');
                            },
                            child: Row(
                              children: [
                                SocialMediaButton.facebook(
                                  size: ScreenUtil().setHeight(25),
                                  color: Colors.grey[300],
                                ),
                                SizedBox(width: 10.w),
                                AutoSizeText(
                                  "Sanan Sheikh",
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(20),
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(height: 30.w),
                          GestureDetector(
                            onTap: () {
                              _launchURL(
                                  'https://www.instagram.com/sanansheikhh');
                            },
                            child: Row(
                              children: [
                                SocialMediaButton.instagram(
                                  size: ScreenUtil().setHeight(25),
                                  color: Colors.grey[300],
                                ),
                                SizedBox(width: 10.w),
                                AutoSizeText(
                                  "sanansheikhh",
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(20),
                                    color: Colors.grey[300],
                                  ),
                                )
                              ],
                            ),
                          ),
                          // SizedBox(height: 30.w),
                          GestureDetector(
                            onTap: () {
                              _launchURL('tel:+923313792988');
                            },
                            child: Row(
                              children: [
                                SocialMediaButton.whatsapp(
                                  size: ScreenUtil().setHeight(25),
                                  color: Colors.grey[300],
                                ),
                                SizedBox(width: 10.w),
                                AutoSizeText(
                                  "+92 331 3792988",
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(20),
                                    color: Colors.grey[300],
                                  ),
                                )
                              ],
                            ),
                          ),
                          // SizedBox(height: 30.w),
                          GestureDetector(
                            onTap: () {
                              _launchURL('mailto:sanansheikh130306@gmail.com');
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.mail,
                                  size: ScreenUtil().setHeight(25),
                                  color: Colors.grey[300],
                                ),
                                SizedBox(width: 10.w),
                                SizedBox(
                                  width: ScreenUtil().setWidth(220),
                                  child: AutoSizeText(
                                    maxLines: 5,
                                    minFontSize: 1,
                                    "sanansheikh130306@gmail.com",
                                    style: TextStyle(
                                      fontSize: ScreenUtil().setSp(20),
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          // SizedBox(height: 30.w),
                          GestureDetector(
                            onTap: () {
                              _launchURL(
                                  'https://pk.linkedin.com/in/sanan-sheikh-055868322?trk=people-guest_people_search-card');
                            },
                            child: Row(
                              children: [
                                SocialMediaButton.linkedin(
                                  size: ScreenUtil().setHeight(25),
                                  color: Colors.grey[300],
                                ),
                                SizedBox(width: 10.w),
                                AutoSizeText(
                                  "Sanan Sheikh",
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(20),
                                    color: Colors.grey[300],
                                  ),
                                )
                              ],
                            ),
                          ),
                          // SizedBox(height: 30.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextField(
                                maxLength: 500,
                                controller: controller,
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF40C4FF),
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    hintText: "Leave a message :) "),
                              ),
                              SizedBox(height: 10.w),
                              GestureDetector(
                                onTap: () async {
                                  if (controller.text != '') {
                                    showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (context) {
                                        return Stack(
                                          children: [
                                            Container(
                                              height: double.infinity,
                                              width: double.infinity,
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                            ),
                                            Center(
                                              child: CircularProgressIndicator(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                    try {
                                      await FirebaseFirestore.instance
                                          .collection('messages')
                                          .doc(controller.text)
                                          .set({"message": controller.text});
                                      setState(() {
                                        controller.clear();
                                      });
                                      Navigator.pop(context);

                                      const snackBar = SnackBar(
                                        elevation: 0,
                                        behavior: SnackBarBehavior.floating,
                                        backgroundColor: Colors.transparent,
                                        content: AwesomeSnackbarContent(
                                          title: 'Thanks',
                                          message: 'Hope its something nice...',
                                          contentType: ContentType.success,
                                        ),
                                      );
                                      setState(() {
                                        controller.clear();
                                      });
                                      ScaffoldMessenger.of(context)
                                        ..hideCurrentSnackBar()
                                        ..showSnackBar(snackBar);
                                    } catch (e) {
                                      Navigator.pop(context);

                                      const snackBar = SnackBar(
                                        elevation: 0,
                                        behavior: SnackBarBehavior.floating,
                                        backgroundColor: Colors.transparent,
                                        content: AwesomeSnackbarContent(
                                          title: 'Sad',
                                          message: 'Message was not sent :/',
                                          contentType: ContentType.failure,
                                        ),
                                      );
                                      ScaffoldMessenger.of(context)
                                        ..hideCurrentSnackBar()
                                        ..showSnackBar(snackBar);
                                    }
                                  } else {
                                    const snackBar = SnackBar(
                                      elevation: 0,
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: Colors.transparent,
                                      content: AwesomeSnackbarContent(
                                        title: 'Really?',
                                        message: 'Empty message? :(',
                                        contentType: ContentType.warning,
                                      ),
                                    );
                                    ScaffoldMessenger.of(context)
                                      ..hideCurrentSnackBar()
                                      ..showSnackBar(snackBar);
                                  }
                                },
                                child: AutoSizeText(
                                  "send",
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(15),
                                    color: Colors.grey[300],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50.w),
                        child: AutoSizeText(
                          textAlign: TextAlign.start,
                          "Contact. ",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(70),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(50),
                    ),
                    child: Divider(color: Colors.grey[300]),
                  ),
                  SizedBox(height: 30.w),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .65,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(100),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _launchURL('https://github.com/tHunter2k6');
                            },
                            child: Row(
                              children: [
                                SocialMediaButton.github(
                                  size: ScreenUtil().setHeight(50),
                                  color: Colors.grey[300],
                                ),
                                SizedBox(width: 10.w),
                                AutoSizeText(
                                  "tHunter2k6",
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(30),
                                    color: Colors.grey[300],
                                  ),
                                )
                              ],
                            ),
                          ),
                          // SizedBox(height: 30.w),
                          GestureDetector(
                            onTap: () {
                              _launchURL(
                                  'https://www.facebook.com/sanan.sheikh.129');
                            },
                            child: Row(
                              children: [
                                SocialMediaButton.facebook(
                                  size: ScreenUtil().setHeight(50),
                                  color: Colors.grey[300],
                                ),
                                SizedBox(width: 10.w),
                                AutoSizeText(
                                  "Sanan Sheikh",
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(30),
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(height: 30.w),
                          GestureDetector(
                            onTap: () {
                              _launchURL(
                                  'https://www.instagram.com/sanansheikhh');
                            },
                            child: Row(
                              children: [
                                SocialMediaButton.instagram(
                                  size: ScreenUtil().setHeight(50),
                                  color: Colors.grey[300],
                                ),
                                SizedBox(width: 10.w),
                                AutoSizeText(
                                  "sanansheikhh",
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(30),
                                    color: Colors.grey[300],
                                  ),
                                )
                              ],
                            ),
                          ),
                          // SizedBox(height: 30.w),
                          GestureDetector(
                            onTap: () {
                              _launchURL(
                                  'tel:+923313792988'); // This will open the dialer
                            },
                            child: Row(
                              children: [
                                SocialMediaButton.whatsapp(
                                  size: ScreenUtil().setHeight(50),
                                  color: Colors.grey[300],
                                ),
                                SizedBox(width: 10.w),
                                AutoSizeText(
                                  "+92 331 3792988",
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(30),
                                    color: Colors.grey[300],
                                  ),
                                )
                              ],
                            ),
                          ),
                          // SizedBox(height: 30.w),
                          GestureDetector(
                            onTap: () {
                              _launchURL('mailto:sanansheikh130306@gmail.com');
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.mail,
                                  size: ScreenUtil().setHeight(50),
                                  color: Colors.grey[300],
                                ),
                                SizedBox(width: 10.w),
                                AutoSizeText(
                                  "sanansheikh130306@gmail.com",
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(30),
                                    color: Colors.grey[300],
                                  ),
                                )
                              ],
                            ),
                          ),
                          // SizedBox(height: 30.w),
                          GestureDetector(
                            onTap: () {
                              _launchURL(
                                  'https://pk.linkedin.com/in/sanan-sheikh-055868322?trk=people-guest_people_search-card');
                            },
                            child: Row(
                              children: [
                                SocialMediaButton.linkedin(
                                  size: ScreenUtil().setHeight(50),
                                  color: Colors.grey[300],
                                ),
                                SizedBox(width: 10.w),
                                AutoSizeText(
                                  "Sanan Sheikh",
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(30),
                                    color: Colors.grey[300],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 800.w),
                            child: TextField(
                              maxLength: 500,
                              controller: controller,
                              decoration: InputDecoration(
                                  icon: IconButton(
                                      onPressed: () async {
                                        if (controller.text != '') {
                                          showDialog(
                                            barrierDismissible: false,
                                            context: context,
                                            builder: (context) {
                                              return Stack(
                                                children: [
                                                  Container(
                                                    height: double.infinity,
                                                    width: double.infinity,
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                  ),
                                                  Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                          try {
                                            await FirebaseFirestore.instance
                                                .collection('messages')
                                                .doc(controller.text)
                                                .set({
                                              "message": controller.text
                                            });
                                            setState(() {
                                              controller.clear();
                                            });
                                            Navigator.pop(context);

                                            const snackBar = SnackBar(
                                              elevation: 0,
                                              behavior:
                                                  SnackBarBehavior.floating,
                                              backgroundColor:
                                                  Colors.transparent,
                                              content: AwesomeSnackbarContent(
                                                title: 'Thanks',
                                                message:
                                                    'Hope its something nice...',
                                                contentType:
                                                    ContentType.success,
                                              ),
                                            );
                                            setState(() {
                                              controller.clear();
                                            });

                                            ScaffoldMessenger.of(context)
                                              ..hideCurrentSnackBar()
                                              ..showSnackBar(snackBar);
                                          } catch (e) {
                                            Navigator.pop(context);

                                            const snackBar = SnackBar(
                                              elevation: 0,
                                              behavior:
                                                  SnackBarBehavior.floating,
                                              backgroundColor:
                                                  Colors.transparent,
                                              content: AwesomeSnackbarContent(
                                                title: 'Sad',
                                                message:
                                                    'Message was not sent :/',
                                                contentType:
                                                    ContentType.failure,
                                              ),
                                            );
                                            ScaffoldMessenger.of(context)
                                              ..hideCurrentSnackBar()
                                              ..showSnackBar(snackBar);
                                          }
                                        } else {
                                          const snackBar = SnackBar(
                                            elevation: 0,
                                            behavior: SnackBarBehavior.floating,
                                            backgroundColor: Colors.transparent,
                                            content: AwesomeSnackbarContent(
                                              title: 'Really?',
                                              message: 'Empty message? :(',
                                              contentType: ContentType.warning,
                                            ),
                                          );
                                          ScaffoldMessenger.of(context)
                                            ..hideCurrentSnackBar()
                                            ..showSnackBar(snackBar);
                                        }
                                      },
                                      icon: Icon(Icons.send_outlined)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF40C4FF),
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  hintText: "Leave a message :) "),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(height: 30.w),
                ],
              ),
            ),
    );
  }
}
