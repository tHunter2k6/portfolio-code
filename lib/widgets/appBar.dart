// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/contact.dart';
import 'package:mywebsite/pages/home_page.dart';
import 'package:mywebsite/pages/projects.dart';
import 'package:mywebsite/theme/my_theme.dart';
import 'package:mywebsite/widgets/navItem.dart';
import 'package:social_media_buttons/social_media_button.dart';

class MaxWidth extends StatelessWidget {
  final Widget child;
  final double maxWidth;

  const MaxWidth({super.key, required this.child, this.maxWidth = 1200});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: child,
      ),
    );
  }
}

Widget customAppBar(BuildContext context, int index) {
  bool isMobile = MediaQuery.of(context).orientation == Orientation.portrait;
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 10.h,
        ),
        child: MaxWidth(
            child: Row(
          children: [
            // LEFT — logo
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomePageResponsive()),
                );
              },
              child: Container(
                height: 50.h,
                width: 100.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: AlignmentGeometry.centerLeft,
                    image: AssetImage('lib/assets/logo2.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(width: isMobile ? 0.w : 100.w),
            // CENTER — nav (never overflows)

            // CENTER — nav
            isMobile
                ? Flexible(
                    fit: FlexFit.loose,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        navItem("about", () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => HomePageResponsive()),
                          );
                        }, index == 1),
                        SizedBox(width: 12.w),
                        navItem("projects", () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (_) => Projects()),
                          );
                        }, index == 2),
                        SizedBox(width: 12.w),
                        navItem("contact", () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (_) => ContactPage()),
                          );
                        }, index == 3),
                      ],
                    ),
                  )
                : Expanded(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 15.w,
                      runSpacing: 8.h,
                      children: [
                        navItem("about", () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => HomePageResponsive()),
                          );
                        }, index == 1),
                        navItem("projects", () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (_) => Projects()),
                          );
                        }, index == 2),
                        navItem("contact", () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (_) => ContactPage()),
                          );
                        }, index == 3),
                      ],
                    ),
                  ),

            // RIGHT — socials (desktop only)
            if (!isMobile)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SocialMediaButton.instagram(
                    color: myPrimaryTextColor,
                    size: 30.w,
                    onTap: () =>
                        launchURL('https://www.instagram.com/sanansheikhh'),
                  ),
                  SizedBox(width: 10.w),
                  SocialMediaButton.github(
                    color: myPrimaryTextColor,
                    size: 30.w,
                    onTap: () => launchURL('https://github.com/tHunter2k6'),
                  ),
                  SizedBox(width: 10.w),
                  SocialMediaButton.facebook(
                    color: myPrimaryTextColor,
                    size: 30.w,
                    onTap: () =>
                        launchURL('https://www.facebook.com/sanan.sheikh.129'),
                  ),
                  SizedBox(width: 10.w),
                  InkWell(
                    child: Icon(Icons.mail_outline,
                        color: myPrimaryTextColor, size: 30.w),
                    onTap: () =>
                        launchURL('mailto:sanansheikh130306@gmail.com'),
                  ),
                  SizedBox(width: 10.w),
                  SocialMediaButton.linkedin(
                    color: myPrimaryTextColor,
                    size: 30.w,
                    onTap: () => launchURL(
                        'https://pk.linkedin.com/in/sanan-sheikh-055868322'),
                  ),
                ],
              ),
          ],
        )),
      ),
      Divider(
        color: myPrimaryTextColor,
        thickness: 1.5,
      ),
    ],
  );
}
