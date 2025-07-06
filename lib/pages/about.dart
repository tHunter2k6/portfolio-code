// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/home_page.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? Padding(
              padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setWidth(20),
                  horizontal: ScreenUtil().setWidth(20)),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: ScreenUtil().setWidth(150),
                      height: ScreenUtil().setHeight(150),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('lib/assets/circle.PNG'),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(15)),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
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
                          Center(
                            child: AutoSizeText(
                              "Who am I?",
                              maxLines: 10,
                              minFontSize: 1,
                              style: TextStyle(
                                color: Color(0xFF40C4FF),
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenUtil().setSp(25),
                              ),
                            ),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(30)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                  maxLines: 100,
                                  minFontSize: 1,
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: ScreenUtil().setSp(15),
                                  ),
                                  "Hi! I’m Sanan Sheikh, a passionate student with a strong interest in technology and creative problem-solving. I’ve explored app and web development, video editing, and graphic design—focusing mainly on building impactful digital experiences using Flutter, Firebase, and Python."),
                              SizedBox(height: ScreenUtil().setHeight(20)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(10)),
                    Container(
                      width: ScreenUtil().setWidth(400),
                      padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //

                              //third para
                              // Divider(color: Colors.grey[700]),
                              AutoSizeText(
                                  maxLines: 100,
                                  minFontSize: 1,
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: ScreenUtil().setSp(15),
                                  ),
                                  "Outside academics, I’ve gained corporate experience, done freelance gigs, and worked as a home tutor—sharpening my communication and teamwork skills. Beyond coding, I enjoy video editing, exploring creative tech tools, and learning German as a third language."),
                              SizedBox(height: ScreenUtil().setHeight(20)),
                              AutoSizeText(
                                  maxLines: 100,
                                  minFontSize: 1,
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: ScreenUtil().setSp(15),
                                  ),
                                  "📩 Feel free to reach out — I’m always open to exciting opportunities, internships, or tech collaborations."),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Padding(
              padding: EdgeInsets.all(ScreenUtil().setWidth(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: ScreenUtil().setWidth(400),
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
                        Center(
                          child: AutoSizeText(
                            "Who am I?",
                            maxLines: 10,
                            minFontSize: 1,
                            style: TextStyle(
                              color: Color(0xFF40C4FF),
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(35),
                            ),
                          ),
                        ),
                        SizedBox(height: ScreenUtil().setHeight(30)),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                  maxLines: 100,
                                  minFontSize: 1,
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: ScreenUtil().setSp(15),
                                  ),
                                  "Hi! I’m Sanan Sheikh, a passionate and self-driven student, with a deep interest in technology, development, and creative problem-solving."),
                              SizedBox(height: ScreenUtil().setHeight(20)),
                              AutoSizeText(
                                  maxLines: 100,
                                  minFontSize: 1,
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: ScreenUtil().setSp(15),
                                  ),
                                  "Over the past few years, I’ve explored various areas in tech—from app development and web design, to video editing and graphic design. My main focus lies in using tools like Flutter, Firebase, and Python to build meaningful digital experiences."),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(400),
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
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //third para
                              // Divider(color: Colors.grey[700]),
                              AutoSizeText(
                                  maxLines: 100,
                                  minFontSize: 1,
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: ScreenUtil().setSp(15),
                                  ),
                                  "Outside of academics, I’ve gained corporate experience, taken on freelance gigs, and worked as a home tutor. These experiences have helped me grow as a communicator and team player."),
                              SizedBox(height: ScreenUtil().setHeight(20)),
                              AutoSizeText(
                                  maxLines: 100,
                                  minFontSize: 1,
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: ScreenUtil().setSp(15),
                                  ),
                                  "When I’m not coding or managing tech projects, I enjoy editing videos, and learning new tools that blend creativity and tech. I’m also exploring German as a third language!"),
                              SizedBox(height: ScreenUtil().setHeight(20)),
                              AutoSizeText(
                                  maxLines: 100,
                                  minFontSize: 1,
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: ScreenUtil().setSp(15),
                                  ),
                                  "📩 Feel free to reach out — I’m always open to exciting opportunities, internships, or tech collaborations."),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(400),
                    padding: EdgeInsets.all(ScreenUtil().setWidth(30)),
                    decoration: BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('lib/assets/pic3.PNG'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
