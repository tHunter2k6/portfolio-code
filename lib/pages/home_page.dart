// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mywebsite/orientation/desktop/home.dart';
import 'package:mywebsite/orientation/mobile/mobile.dart';

var myBackgroundColor = Color.fromARGB(255, 52, 44, 44);
var myAppBarColor = Colors.grey[300];

// Colors.black;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape
        ? Desktop()
        : Mobile();
  }
}
