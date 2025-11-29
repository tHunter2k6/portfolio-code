// Backgrounds
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

var scaffoldBackgroundColor = Color(0xFF121212); // main dark background
var mySecondaryBackgroundColor = Color(0xFF1E1E1E); // container/card background
var myTertiaryBackgroundColor =
    Color(0xFF2C2C2C); // subtle card/background for hover states

// AppBar / Navbar
var appBarColor = Color(0xFF121212); // navbar background
var myAppBarTextColor = Color(0xFFFFFFFF); // default navbar text
var myAppBarActiveTextColor = Color(0xFF40C4FF); // active link / hover

// Accent / Buttons
var myAccentColor = Color(0xFF40C4FF); // primary blue accent
var myAccentLight = Color(0xFF80D8FF); // hover / subtle accent
var myOptionalAccentOrange = Color(0xFFFFAB40); // optional highlights
var myOptionalAccentRed = Color(0xFFFF5252); // warning / error

// Text Colors
var myPrimaryTextColor = Color(0xFFFFFFFF); // main text
var mySecondaryTextColor = Color(0xFFB0B0B0); // secondary / descriptions
var myHeadingTextColor = Color(0xFF40C4FF); // headings / emphasis

// final ThemeData myTheme = ThemeData(
//   brightness: Brightness.dark, // overall dark theme
//   scaffoldBackgroundColor: myBackgroundColor,
//   primaryColor: myAccentColor,
//   secondaryHeaderColor: mySecondaryBackgroundColor,

//   appBarTheme: AppBarTheme(
//     backgroundColor: myAppBarColor,
//     foregroundColor: myAppBarTextColor, // default text/icon color
//     elevation: 2,
//     titleTextStyle: TextStyle(
//       color: myAppBarTextColor,
//       fontSize: 20,
//       fontWeight: FontWeight.bold,
//     ),
//     iconTheme: IconThemeData(
//       color: myAppBarTextColor,
//     ),
//   ),

//   textTheme: TextTheme(
//     displayLarge: TextStyle(
//       color: myHeadingTextColor,
//       fontWeight: FontWeight.bold,
//       fontSize: 32.sp,
//     ),
//     displayMedium: TextStyle(
//       color: myHeadingTextColor,
//       fontWeight: FontWeight.bold,
//       fontSize: 28.sp,
//     ),
//     bodyLarge: TextStyle(
//       color: myPrimaryTextColor,
//       fontSize: 16.sp,
//     ),
//     bodyMedium: TextStyle(
//       color: mySecondaryTextColor,
//       fontSize: 14.sp,
//     ),
//     titleLarge: TextStyle(
//       color: myPrimaryTextColor,
//       fontWeight: FontWeight.bold,
//       fontSize: 18.sp,
//     ),
//     labelLarge: TextStyle(
//       color: myPrimaryTextColor,
//       fontWeight: FontWeight.bold,
//       fontSize: 16.sp,
//     ),
//   ),

//   elevatedButtonTheme: ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//       backgroundColor: myAccentColor,
//       foregroundColor: myPrimaryTextColor,
//       padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
//       textStyle: TextStyle(
//         fontWeight: FontWeight.bold,
//       ),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//       ),
//     ),
//   ),

//   outlinedButtonTheme: OutlinedButtonThemeData(
//     style: OutlinedButton.styleFrom(
//       side: BorderSide(color: myAccentColor, width: 2),
//       foregroundColor: myAccentColor,
//       padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
//       textStyle: TextStyle(fontWeight: FontWeight.bold),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//       ),
//     ),
//   ),

//   floatingActionButtonTheme: FloatingActionButtonThemeData(
//     backgroundColor: myAccentColor,
//     foregroundColor: myPrimaryTextColor,
//   ),

//   cardTheme: CardThemeData(
//     color: mySecondaryBackgroundColor,
//     shadowColor: Colors.black26,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(15),
//     ),
//     elevation: 5,
//   ),

//   dividerColor: Colors.grey[700],
//   iconTheme: IconThemeData(color: myPrimaryTextColor),
//   colorScheme: ColorScheme.dark(
//     primary: myAccentColor,
//     secondary: myAccentLight,
//     background: myBackgroundColor,
//     surface: mySecondaryBackgroundColor,
//     onPrimary: myPrimaryTextColor,
//     onSecondary: myPrimaryTextColor,
//     onBackground: myPrimaryTextColor,
//     onSurface: myPrimaryTextColor,
//   ),
// );
