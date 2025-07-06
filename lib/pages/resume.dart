// ignore_for_file: camel_case_types, prefer_const_constructors, deprecated_member_use

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/home_page.dart';
import 'dart:html' as html;

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final url =
              'https://docs.google.com/document/d/1AlGdCoYQQVtWFopVSYIwlGYwqI4zFrIBbTPtbaKiSLg/export?format=pdf';
          final anchor = html.AnchorElement(href: url)
            ..target = 'blank'
            ..download = 'sanan_resume.pdf'
            ..click();
        },
        backgroundColor: myAppBarColor,
        child: Icon(Icons.download),
      ),
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? Padding(
              padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
              child: Container(
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
                        Text(
                          'Sanan Sheikh',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        AutoSizeText(
                          'Student',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[300],
                          ),
                        ),
                        SizedBox(height: 16),
                        AutoSizeText(
                          'Contact:',
                          style: TextStyle(
                            color: Color(0xFF40C4FF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText('+92 331 3792988'),
                              AutoSizeText('sanansheikh130306@gmail.com'),
                            ]),
                        SizedBox(height: 16),
                        AutoSizeText(
                          'Languages:',
                          style: TextStyle(
                            color: Color(0xFF40C4FF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText('English'),
                              AutoSizeText('Urdu'),
                              AutoSizeText('German (Elementary)'),
                            ]),
                        SizedBox(height: 16),
                        AutoSizeText(
                          'Skills:',
                          style: TextStyle(
                            color: Color(0xFF40C4FF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText('Python'),
                            AutoSizeText('Java (basic)'),
                            AutoSizeText('Flutter'),
                            AutoSizeText('App Development'),
                            AutoSizeText('Firebase Console'),
                            AutoSizeText('HTML / Web Dev'),
                            AutoSizeText('Blender'),
                            AutoSizeText('Video & Photo Editing'),
                            AutoSizeText('Graphic Designing'),
                            AutoSizeText('Pseudocode Writing'),
                            AutoSizeText('MS Excel & Word'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'Experience:',
                              style: TextStyle(
                                color: Color(0xFF40C4FF),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    'Director IT 2024–2025 @ FPS A levels',
                                  ),
                                  AutoSizeText('Head of IT - Ignite XI (2024)'),
                                  AutoSizeText(
                                      'Chief Science Executive - SciVerse 2.0 (2025)'),
                                  AutoSizeText('ECM - Ignite-X IT (2023)'),
                                  AutoSizeText(
                                      'Module Head - SciVerse 1.0 (2024)'),
                                ]),
                            SizedBox(height: 20),
                            AutoSizeText(
                              'Work History:',
                              style: TextStyle(
                                color: Color(0xFF40C4FF),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText('Worked at DialArtis'),
                                  AutoSizeText('Freelancing'),
                                  AutoSizeText('Home Tutor'),
                                ]),
                            SizedBox(height: 20),
                            AutoSizeText(
                              'Projects:',
                              style: TextStyle(
                                color: Color(0xFF40C4FF),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                    'Ignite App – Auction hosting & TVC booking'),
                                AutoSizeText(
                                    'FOREX – Foreign exchange simulation software'),
                                AutoSizeText(
                                    'SciVerse – Website landing page + a custom registration form'),
                                AutoSizeText(
                                    'Wardrobe – Outfit saving & clothing collections'),
                                AutoSizeText(
                                    'Portfolio – My portfolio website'),
                              ],
                            ),
                            SizedBox(height: 20),
                            AutoSizeText(
                              'Education:',
                              style: TextStyle(
                                color: Color(0xFF40C4FF),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                    'A Levels – Foundation Public School (2A\'s, 2B\'s)'),
                                AutoSizeText('O Levels – 1A*, 6A\'s, 2B\'s'),
                              ],
                            ),
                          ],
                        ),
                      ],
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
                            Text(
                              'Sanan Sheikh',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: ScreenUtil().setSp(30),
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            AutoSizeText(
                              'Student',
                              style: TextStyle(
                                fontSize: 25.sp,
                                color: Colors.grey[300],
                              ),
                            ),
                            SizedBox(height: 16.h),
                            AutoSizeText(
                              'Contact:',
                              style: TextStyle(
                                color: Color(0xFF40C4FF),
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp,
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    '+92 331 3792988',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  AutoSizeText(
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                      ),
                                      'sanansheikh130306@gmail.com'),
                                ]),
                            SizedBox(height: 16.h),
                            AutoSizeText(
                              'Languages:',
                              style: TextStyle(
                                color: Color(0xFF40C4FF),
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp,
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    'English',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  AutoSizeText(
                                    'Urdu',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  AutoSizeText(
                                    'German (Elementary)',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ]),
                            SizedBox(height: 16.h),
                            AutoSizeText(
                              'Skills:',
                              style: TextStyle(
                                color: Color(0xFF40C4FF),
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'Python',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                AutoSizeText(
                                  'Java (basic)',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                AutoSizeText(
                                  'Flutter',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                AutoSizeText(
                                  'App Development',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                AutoSizeText(
                                  'Firebase Console',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                AutoSizeText(
                                  'HTML / Web Dev',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                AutoSizeText(
                                  'Blender (Basic)',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                AutoSizeText(
                                  'Video & Photo Editing',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                AutoSizeText(
                                  'Graphic Designing',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                AutoSizeText(
                                  'Pseudocode Writing',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                AutoSizeText(
                                  'MS Excel & Word',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
                              'Experience:',
                              style: TextStyle(
                                color: Color(0xFF40C4FF),
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp,
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    'Director IT 2024–2025 @ FPS A levels',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  AutoSizeText(
                                    'Head of IT - Ignite XI (2024)',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  AutoSizeText(
                                    'Chief Science Executive - SciVerse 2.0 (2025)',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  AutoSizeText(
                                    'ECM - Ignite-X IT (2023)',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  AutoSizeText(
                                    'Module Head - SciVerse 1.0 (2024)',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ]),
                            SizedBox(height: 20.h),
                            AutoSizeText(
                              'Work History:',
                              style: TextStyle(
                                color: Color(0xFF40C4FF),
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp,
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    'Worked at DialArtis',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  AutoSizeText(
                                    'Freelancing',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  AutoSizeText(
                                    'Home Tutor',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ]),
                            SizedBox(height: 20.h),
                            AutoSizeText(
                              'Projects:',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Color(0xFF40C4FF),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'Ignite App – Auction hosting & TVC booking',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                AutoSizeText(
                                  'FOREX – Foreign exchange simulation software',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                AutoSizeText(
                                  'SciVerse – Website landing page + a custom registration form',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                AutoSizeText(
                                  'Wardrobe – Outfit saving & clothing collections',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                AutoSizeText(
                                  'Portfolio – My portfolio website',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            AutoSizeText(
                              'Education:',
                              style: TextStyle(
                                color: Color(0xFF40C4FF),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'As Level – Foundation Public School (2A\'s, 2B\'s)',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                AutoSizeText(
                                  'O Levels – 1A*, 6A\'s, 2B\'s',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
