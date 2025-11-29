// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/pages/contact.dart';
import 'package:mywebsite/pages/home_page.dart';
import 'package:mywebsite/theme/my_theme.dart';
import 'package:mywebsite/widgets/appBar.dart';
import 'package:mywebsite/widgets/containers_grid.dart';
import 'package:social_media_buttons/social_media_button.dart';

//  Column(
//               children: [
// Padding(
//   padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       AutoSizeText(
//         "Sanan Sheikh",
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           color: myPrimaryTextColor,
//           fontSize: 20.sp,
//         ),
//       ),
//       Row(
//         children: [
//           InkWell(
//             onTap: () => pageChanger(0),
//             child: AutoSizeText(
//               "home",
//               style: TextStyle(
//                   fontSize: 20.sp,
//                   fontWeight: pageIndex == 0
//                       ? FontWeight.bold
//                       : FontWeight.normal,
//                   color: myPrimaryTextColor),
//             ),
//           ),
//           SizedBox(width: 15.w),
//           InkWell(
//             onTap: scrollToAbout,
//             child: AutoSizeText(
//               "about",
//               style: TextStyle(
//                   fontSize: 20.sp,
//                   fontWeight: pageIndex == 1
//                       ? FontWeight.bold
//                       : FontWeight.normal,
//                   color: myPrimaryTextColor),
//             ),
//           ),
//           SizedBox(width: 15.w),
//           // InkWell(
//           //   onTap: () => pageChanger(1),
//           //   child: AutoSizeText(
//           //     "resume",
//           //     style: TextStyle(
//           //         fontSize: 20.sp,
//           //         fontWeight: pageIndex == 1
//           //             ? FontWeight.bold
//           //             : FontWeight.normal,
//           //         color: myPrimaryTextColor),
//           //   ),
//           // ),
//           // SizedBox(width: 15.w),
//           InkWell(
//             onTap: () => pageChanger(2),
//             child: AutoSizeText(
//               "projects",
//               style: TextStyle(
//                   fontSize: 20.sp,
//                   fontWeight: pageIndex == 2
//                       ? FontWeight.bold
//                       : FontWeight.normal,
//                   color: myPrimaryTextColor),
//             ),
//           ),
//           SizedBox(width: 15.w),
//           InkWell(
//             onTap: () => pageChanger(3),
//             child: AutoSizeText(
//               "contact",
//               style: TextStyle(
//                   fontSize: 20.sp,
//                   fontWeight: pageIndex == 3
//                       ? FontWeight.bold
//                       : FontWeight.normal,
//                   color: myPrimaryTextColor),
//             ),
//           ),
//         ],
//       ),
//       if (!isMobile)
//         Row(
//           children: [
//             SocialMediaButton.instagram(
//               color: myPrimaryTextColor,
//               size: 30.w,
//               onTap: () => launchURL(
//                   'https://www.instagram.com/sanansheikhh'),
//             ),
//             SizedBox(width: 10.w),
//             SocialMediaButton.github(
//               color: myPrimaryTextColor,
//               size: 30.w,
//               onTap: () =>
//                   launchURL('https://github.com/tHunter2k6'),
//             ),
//             SizedBox(width: 10.w),
//             SocialMediaButton.facebook(
//               color: myPrimaryTextColor,
//               size: 30.w,
//               onTap: () => launchURL(
//                   'https://www.facebook.com/sanan.sheikh.129'),
//             ),
//             SizedBox(width: 10.w),
//             InkWell(
//               child: Icon(Icons.mail_outline,
//                   color: myPrimaryTextColor, size: 30.w),
//               onTap: () => launchURL(
//                   'mailto:sanansheikh130306@gmail.com'),
//             ),
//             SizedBox(width: 10.w),
//             SocialMediaButton.linkedin(
//               color: myPrimaryTextColor,
//               size: 30.w,
//               onTap: () => launchURL(
//                   'https://pk.linkedin.com/in/sanan-sheikh-055868322?trk=people-guest_people_search-card'),
//             ),
//           ],
//         )
//     ],
//   ),
// ),
// Divider(
//   color: myPrimaryTextColor,
//   thickness: 1.5,
// ),
//               ],
//             );

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  bool get isMobile => false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            customAppBar(context, 2),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: ScreenUtil().setWidth(
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? 20
                        : 0),
                horizontal: ScreenUtil().setWidth(
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? 200
                        : 0),
              ),
              child: MyContainersGrid(
                isRecent: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
