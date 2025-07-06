// // ignore_for_file: prefer_const_constructors

// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mywebsite/pages/home_page.dart';
// import 'package:mywebsite/orientation/mobile/mobile.dart';
// import 'package:mywebsite/pages/resume.dart';
// import 'package:url_launcher/url_launcher.dart';

// class MyDrawer extends StatefulWidget {
//   const MyDrawer({super.key});

//   @override
//   State<MyDrawer> createState() => _MyDrawerState();
// }

// class _MyDrawerState extends State<MyDrawer> {
//   // void _launchURL(String url) async {
//   //   if (await canLaunch(url)) {
//   //     await launch(url);
//   //   } else {
//   //     throw 'Could not launch $url';
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return 
//     Drawer(
//       backgroundColor: Colors.grey[800],
//       child: ListView(
//         children: [
//           Container(
//             width: ScreenUtil().setWidth(200),
//             height: ScreenUtil().setHeight(200),
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('lib/assets/my_logo1.png'),
//               ),
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               pageChanger(0);
//               // Navigator.of(context).pop();
//               // Navigator.of(context)
//               //     .pushReplacement(MaterialPageRoute(builder: (context) {
//               //   return ResumePage();
//               // }));
//             },
//             child: AutoSizeText(
//               "home",
//               style: TextStyle(
//                 fontWeight:
//                     pageIndex == 0 ? FontWeight.bold : FontWeight.normal,
//                 color: myBackgroundColor,
//               ),
//             ),
//           ),
//           SizedBox(width: 25),
//           GestureDetector(
//             onTap: () {
//               pageChanger(1);
//             },
//             child: AutoSizeText(
//               "resume",
//               style: TextStyle(
//                 fontWeight:
//                     pageIndex == 1 ? FontWeight.bold : FontWeight.normal,
//                 color: myBackgroundColor,
//               ),
//             ),
//           ),
//           SizedBox(width: 25),
//           GestureDetector(
//             onTap: () {
//               pageChanger(2);
//             },
//             child: AutoSizeText(
//               "about",
//               style: TextStyle(
//                 fontWeight:
//                     pageIndex == 2 ? FontWeight.bold : FontWeight.normal,
//                 color: myBackgroundColor,
//               ),
//             ),
//           ),
//           SizedBox(width: 25),
//           GestureDetector(
//             onTap: () {
//               pageChanger(3);
//             },
//             child: AutoSizeText(
//               "projects",
//               style: TextStyle(
//                   fontWeight:
//                       pageIndex == 3 ? FontWeight.bold : FontWeight.normal,
//                   color: myBackgroundColor),
//             ),
//           ),
//           SizedBox(width: 25),
//           GestureDetector(
//             onTap: () {
//               pageChanger(4);
//             },
//             child: AutoSizeText(
//               "contact",
//               style: TextStyle(
//                   fontWeight:
//                       pageIndex == 4 ? FontWeight.bold : FontWeight.normal,
//                   color: myBackgroundColor),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
