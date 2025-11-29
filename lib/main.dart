import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mywebsite/firebase_options.dart';
import 'package:mywebsite/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;

    Size designSize = const Size(375, 812);

    if (kIsWeb) {
      if (MediaQuery.of(context).orientation == Orientation.landscape) {
        double screenWidth = MediaQuery.of(context).size.width;
        double screenHeight = MediaQuery.of(context).size.height;

        designSize = Size(screenWidth, screenHeight);
      } else {
        designSize = const Size(375, 812);
      }
    }
    return ScreenUtilInit(
      designSize: designSize,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "sanan_sheikh",
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
        ),
        theme: ThemeData(
          colorScheme: const ColorScheme.dark(),
          useMaterial3: true,
          fontFamily: 'Montserrat',
        ),
        home: HomePageResponsive(),
      ),
    );
  }
}
