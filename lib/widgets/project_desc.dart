// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectDisplay extends StatelessWidget {
  final String title;
  final String description;
  final List<String> images;

  const ProjectDisplay({
    super.key,
    required this.title,
    required this.description,
    required this.images,
  });

  void _showImageDialog(BuildContext context, String imagePath) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.black.withOpacity(0.2),
              ),
              Center(
                child: InteractiveViewer(
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width,
                      maxHeight: MediaQuery.of(context).size.height * 0.8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.asset(imagePath, fit: BoxFit.contain),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 800;

    Widget imageColumn = ListView(
      children: images
          .map(
            (img) => GestureDetector(
              onTap: () => _showImageDialog(context, img),
              child: Container(
                width: isMobile ? double.infinity : 500.w,
                height: isMobile ? 200.h : 300.h,
                margin: EdgeInsets.only(bottom: 15.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(img),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );

    Widget descriptionColumn = Container(
      padding: EdgeInsets.all(20.w),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            description,
            minFontSize: 12,
            maxLines: 20,
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: isMobile ? 14.sp : 20.sp,
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AutoSizeText(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(isMobile ? 15.w : 30.w),
        child: isMobile
            ? ListView(
                children: [
                  imageColumn,
                  SizedBox(height: 20.h),
                  descriptionColumn,
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: descriptionColumn),
                  SizedBox(width: 30.w),
                  Expanded(flex: 1, child: imageColumn),
                ],
              ),
      ),
    );
  }
}
