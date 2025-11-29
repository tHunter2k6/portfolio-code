// ignore_for_file: camel_case_types, prefer_const_constructors, deprecated_member_use

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:html' as html;

import 'package:mywebsite/pages/home_page.dart';

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
          ? _buildPortrait()
          : _buildLandscape(),
    );
  }

  Widget _buildPortrait() {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Container(
        width: 500.w,
        padding: EdgeInsets.all(30.w),
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
            _buildHeader(),
            SizedBox(height: 16.h),
            _buildSkills(),
            SizedBox(height: 16.h),
            _buildExperience(),
            SizedBox(height: 16.h),
            _buildEducation(),
            SizedBox(height: 16.h),
            _buildProjects(),
            SizedBox(height: 16.h),
            _buildLanguages(),
            SizedBox(height: 16.h),
            _buildAwards(),
          ],
        ),
      ),
    );
  }

  Widget _buildLandscape() {
    return Padding(
      padding: EdgeInsets.all(50.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Left Column
          Container(
            width: 500.w,
            padding: EdgeInsets.all(30.w),
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
                _buildHeader(),
                SizedBox(height: 16.h),
                _buildSkills(),
              ],
            ),
          ),
          // Right Column
          Container(
            width: 500.w,
            padding: EdgeInsets.all(30.w),
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
                _buildExperience(),
                SizedBox(height: 16.h),
                _buildEducation(),
                SizedBox(height: 16.h),
                _buildProjects(),
                SizedBox(height: 16.h),
                _buildLanguages(),
                SizedBox(height: 16.h),
                _buildAwards(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'Sanan Sheikh',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 28.sp,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 1,
          minFontSize: 18.sp,
        ),
        SizedBox(height: 8.h),
        AutoSizeText(
          'Student',
          style: TextStyle(fontSize: 16.sp, color: Colors.grey[300]),
          maxLines: 1,
          minFontSize: 12.sp,
        ),
        SizedBox(height: 16.h),
        AutoSizeText(
          'Contact:',
          style: TextStyle(
            color: Color(0xFF40C4FF),
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText('+92 331 3792988', style: TextStyle(fontSize: 14.sp)),
            AutoSizeText('sanansheikh130306@gmail.com',
                style: TextStyle(fontSize: 14.sp)),
          ],
        ),
        SizedBox(height: 16.h),
        AutoSizeText(
          'Summary:',
          style: TextStyle(
              color: Color(0xFF40C4FF),
              fontWeight: FontWeight.bold,
              fontSize: 16.sp),
        ),
        AutoSizeText(
          'A motivated computer science student with a strong interest in programming and problem-solving.',
          style: TextStyle(fontSize: 14.sp, color: Colors.grey[300]),
          maxLines: 3,
          minFontSize: 12.sp,
        ),
      ],
    );
  }

  Widget _buildSkills() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText('Skills:',
            style: TextStyle(
                color: Color(0xFF40C4FF),
                fontWeight: FontWeight.bold,
                fontSize: 16.sp)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'Python',
            'Java (basic)',
            'App Development',
            'Flutter',
            'Use of Firebase console',
            'Web Development / HTML',
            'Blender',
            'Graphic Designing',
            'Pseudocode Writing',
            'Microsoft Office'
          ]
              .map((skill) => AutoSizeText(skill,
                  style: TextStyle(fontSize: 14.sp), maxLines: 1))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildExperience() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText('Experience:',
            style: TextStyle(
                color: Color(0xFF40C4FF),
                fontWeight: FontWeight.bold,
                fontSize: 16.sp)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'Freelancing (2024 - Present)',
            'DialArtis (June 2023 - Sept 2023)',
            'ECM - FPS Ignite-X IT (2023)',
            'Module Head - SciVerse 1.0 (2024)',
            'Director IT - FPS A Levels (2024-2025)',
            'Head of IT - Ignite XI (2024)',
            'Chief Science Executive - SciVerse 2.0 (2025)'
          ]
              .map((exp) => AutoSizeText(exp,
                  style: TextStyle(fontSize: 14.sp), maxLines: 1))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildEducation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText('Education:',
            style: TextStyle(
                color: Color(0xFF40C4FF),
                fontWeight: FontWeight.bold,
                fontSize: 16.sp)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'GCE A’Levels / Foundation Public School (2023 - 2025)',
            'GCE O’Levels / Montessori Complex Cambridge School (2022 - 2023)'
          ]
              .map((edu) => AutoSizeText(edu,
                  style: TextStyle(fontSize: 14.sp), maxLines: 1))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildProjects() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText('Projects:',
            style: TextStyle(
                color: Color(0xFF40C4FF),
                fontWeight: FontWeight.bold,
                fontSize: 16.sp)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'Ignite App – Event Registration, Auction & Forex Simulation, Document Submissions, TVC Booking',
            'LR Autos – CMS & POS for automobile workshop',
            'Forex – Foreign Exchange simulation software',
            'theDAC Web – Portfolio website for online business',
            'SciVerse Web – Landing page & custom registration hosted on Firebase',
            'Wardrobe – Digital wardrobe to create & save outfit collections',
          ]
              .map((proj) =>
                  AutoSizeText(proj, style: TextStyle(fontSize: 14.sp)))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildLanguages() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText('Languages:',
            style: TextStyle(
                color: Color(0xFF40C4FF),
                fontWeight: FontWeight.bold,
                fontSize: 16.sp)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'English (C3)',
            'Urdu (Native)',
            'German (Elementary)',
          ]
              .map((lang) => AutoSizeText(lang,
                  style: TextStyle(fontSize: 14.sp), maxLines: 1))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildAwards() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText('Awards:',
            style: TextStyle(
                color: Color(0xFF40C4FF),
                fontWeight: FontWeight.bold,
                fontSize: 16.sp)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'Leadership Award / Foundation Public School A’Levels',
            'Tech Award / Foundation Public School A’Levels',
            'Head of IT / Ignite XI',
            'Chief Science Executive / SciVerse 2.0',
            'Executive Council Member / Ignite X',
            'Module Head / SciVerse 1.0',
          ]
              .map((award) => AutoSizeText(award,
                  style: TextStyle(fontSize: 14.sp), maxLines: 1))
              .toList(),
        ),
      ],
    );
  }
}
